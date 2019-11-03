use core::sync::atomic::{AtomicU32, Ordering};
use core::ops::{Deref,DerefMut};


pub trait ThreadToken { const ID : u32; }

pub struct Token<T> { phantom : core::marker::PhantomData<T> }
impl<T> Token<T> {
	pub unsafe fn new() -> Token<T> { return Token { phantom: core::marker::PhantomData }; }
}

impl ThreadToken for Token<Main> { const ID : u32 = 1; }
impl ThreadToken for Token<ISR>  { const ID : u32 = 2; }

#[allow(dead_code)]
pub struct Main;
#[allow(dead_code)]
pub struct ISR;

use core::cell::UnsafeCell;


pub struct CoopContainer<T> {
	current_owner : AtomicU32,
	content : UnsafeCell<T>
}

pub struct Guard<'a,T,Owner : ThreadToken> {
	coop_container : &'a CoopContainer<T>,
	_owner : core::marker::PhantomData<Owner>
}

impl<T> CoopContainer<T> {
	//pub const fn new<S : ThreadToken>(init : T) -> CoopContainer<T>
	pub const fn new(init : T, owner : u32) -> CoopContainer<T>
	{
		CoopContainer {
			current_owner : AtomicU32::new(owner),
			//current_owner : AtomicU32::new(S::ID),
			content : UnsafeCell::new(init)
		}
	}

	pub fn try_get<S : ThreadToken>(&self, _proof : &S) -> Result<Guard<T,S>, ()>
	{
		if self.current_owner.load(Ordering::Acquire) == S::ID
		{
			self.current_owner.store(0, Ordering::Relaxed); // other threads won't care
			Result::Ok(Guard { coop_container : self, _owner:core::marker::PhantomData })
		}
		else
		{
			Result::Err(())
		}
	}
}

impl<T,O : ThreadToken> Guard<'_,T,O> {
	pub fn give_away<S : ThreadToken>(self) -> ()
	{
		self.coop_container.current_owner.store(S::ID, Ordering::Release);
		core::mem::forget(self);
	}
}

impl<T, O : ThreadToken> Drop for Guard<'_,T,O> {
	fn drop(&mut self)
	{
		self.coop_container.current_owner.store(O::ID, Ordering::Release);
	}
}

unsafe impl<T> Sync for CoopContainer<T> {}


impl<T, O:ThreadToken> Deref for Guard<'_,T,O> {
	type Target = T;

	fn deref(&self) -> &T {
		unsafe { &*self.coop_container.content.get() }
	}
}

impl<T, O:ThreadToken> DerefMut for Guard<'_,T,O> {
	fn deref_mut(&mut self) -> &mut T {
		unsafe { &mut *self.coop_container.content.get() }
	}
}
