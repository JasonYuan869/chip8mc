for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_fx33\\opcode_fx33_{x}.mcfunction', 'w') as f:
            f.write(f'scoreboard players operation Global memory_value = Global V{hex(x)[2:].upper()}\n'
                    'scoreboard players operation Global copy_1 = Global memory_value\n'
                    'scoreboard players operation Global copy_2 = Global memory_value\n'
                    'scoreboard players operation Global memory_value /= c100 Constant\n'
                    'scoreboard players operation Global copy_2 %= c10 Constant\n'
                    'scoreboard players operation Global copy_1 %= c100 Constant\n'
                    'scoreboard players operation Global copy_1 /= c10 Constant\n'
                    'function cpu:memory/write_memory/write_memory\n'
                    'scoreboard players add Global I 1\n'
                    'scoreboard players operation Global memory_value = Global copy_1\n'
                    'function cpu:memory/write_memory/write_memory\n'
                    'scoreboard players add Global I 1\n'
                    'scoreboard players operation Global memory_value = Global copy_2\n'
                    'function cpu:memory/write_memory/write_memory\n'
                    'scoreboard players remove Global I 2\n')

"""
for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_fx33.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_fx33/opcode_fx33_{x}\n')
"""
