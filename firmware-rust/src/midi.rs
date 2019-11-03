#[derive(Debug)]
pub enum MidiMessage {
	Global(MidiGlobalMessage),
	Channel(u8, MidiChannelMessage)
}
#[derive(Debug)]
pub enum MidiGlobalMessage {
	Reserved0,
	Reserved1,
	SystemCommon { data : [u8;3], len : u8 },
	SysEx { data: [u8;3], len : u8, end : bool },
	SingleByte { byte : u8 }
}
#[derive(Debug)]
pub enum MidiChannelMessage {
	NoteOn  { note: u8, velocity: u8 },
	NoteOff { note: u8, velocity: u8 },
	PolyAftertouch, // TODO
	ControlChange { ctrl: u8, value: u8 },
	ProgramChange { program: u8},
	ChannelAftertouch { value: u8 },
	Pitchbend  { value: u16 }
}

pub fn parse_midi (data : &[u8; 4]) -> (u8, MidiMessage) {
	use MidiMessage::*;
	use MidiGlobalMessage::*;
	use MidiChannelMessage::*;

	let cable = (data[0] & 0xF0) >> 4;
	let code_index_number = data[0] & 0x0F;

	let d3 = [data[1], data[2], data[3]];

	let midi_message = match code_index_number {
		0x0 => Global(Reserved0),
		0x1 => Global(Reserved1),
		0x2 => Global(SystemCommon { data : d3, len : 2 }),
		0x3 => Global(SystemCommon { data : d3, len : 3 }),
		0x4 => Global(SysEx {data : d3, len : 3, end : false }),
		0x5 => Global(SysEx {data : d3, len : 1, end : true }),
		0x6 => Global(SysEx {data : d3, len : 2, end : true }),
		0x7 => Global(SysEx {data : d3, len : 3, end : true }),
		0xF => Global(SingleByte { byte : data[1] }),
		_ => {
			//let hi = (data[1] & 0xF0) >> 4;
			let channel = data[1] & 0x0F;
			
			Channel(channel,
				match code_index_number {
					0x8 => NoteOff { note : data[2], velocity : data[3] },
					0x9 => if data[3] > 0 { NoteOn  { note : data[2], velocity : data[3] } }
						   else { NoteOff { note : data[2], velocity : 64 } }
					0xA => PolyAftertouch, // TODO
					0xB => ControlChange { ctrl : data[2], value : data[3] },
					0xC => ProgramChange { program : data[2] },
					0xD => ChannelAftertouch { value : data[2] },
					0xE => Pitchbend { value : ((data[2]&0x7F) as u16) + 128*((data[3]&0x7F) as u16) },
					_   => panic!()
				}
			)
		}
	};

	(cable, midi_message)
}

