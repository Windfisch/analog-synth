use num_traits::PrimInt;

pub fn reverse_bits<Int : PrimInt>(val : Int, n_bits: u8) -> Int
{
	let mut result : Int = Int::zero();
	for i in 0..n_bits {
		if val & (Int::one() << i as usize) != Int::zero() {
			result = result | (Int::one() << (n_bits-i-1) as usize);
		}
	}
	return result;
}
