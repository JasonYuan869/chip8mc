for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_fx29\\opcode_fx29_{x}.mcfunction', 'w') as f:
            f.write(f'scoreboard players operation Global I = Global V{hex(x)[2:].upper()}\n'
                    'scoreboard players operation Global I *= c5 Constant\n')


for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_fx29.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_fx29/opcode_fx29_{x}\n')
