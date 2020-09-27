# Load a ch8 file (binary) into scoreboard instructions

with open('rng.ch8','rb') as f:
    byte_array = bytes(f.read())

with open('..\data\\roms\\functions\\rng.mcfunction', 'w') as f:
    i = 0
    for byte in byte_array:
        f.write(f'scoreboard players set Global mem_{i + 512} {str(byte)}\n')
        i += 1
