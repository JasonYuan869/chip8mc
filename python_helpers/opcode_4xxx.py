for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_4xxx.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} unless score Global V{hex(x)[2:].upper()} = Global PC_nibble_4 run scoreboard players add Global PC 2\n')
