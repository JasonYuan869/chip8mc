# CHIP-8_MC
An experimental CHIP-8 emulator in Minecraft 1.16.2. Inspired by SethBling's [Atari 2600 emulator](https://www.youtube.com/watch?v=mq7T5_xH24M).

## Features
- Implements all CHIP-8 opcodes from [Cowgod's Technical Reference](http://devernay.free.fr/hacks/chip8/C8TECH10.HTM)
- Fully functioning 64x32 monochrome display
- Runs on Minecraft's 20 Hz clock (the timers also decrement at 20 Hz)
  - About 3 fps
- Fully functional on-screen keyboard in the chat window (set focused height to 40 px in chat settings)
  - Buttons work by toggling on and off
- Preloaded with some ROMS (more can be added)
- Basic debug tracelog with opcode and PC
- SOUND IS NOT IMPLEMENTED (and I don't plan to because Minecraft doesnt have a tone generator)

## Usage
- Create a new world in Creative mode and set the world type to superflat void.
- Download chip8mc.zip and place it into the datapacks folder.
- Upon load, a wall of white wool should appear. This is the screen. Face the screen looking towards positive X.
- Load a rom with `/function roms:<rom_name>` and start the emulator with `/function chip8:start`.
- The on-screen keyboard should appear. Click individual buttons to toggle them on/off (set focused height to 40 px in chat settings).
- To enable debug output into the chat, run `/scoreboard players set Global enable_debug 1`.
  - Chat is output to Minecraft logs which can be accessed to see a tracelog
  
## Adding new ROMs
- Place the ROM binary into the `python_helpers` folder.
- Edit line 3 to say `with open('<file name + extension>', 'rb') as f:`.
- Edit line 6 to say `with open('<..\data\\roms\\functions\\<rom_name>.mcfunction', 'w') as f:`.
- Run rom_to_scoreboard.py.
- Activate the new ROM in game with `/function roms:<rom_name>`.
