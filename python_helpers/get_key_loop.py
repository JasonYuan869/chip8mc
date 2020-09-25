with open('..\\data\\chip8\\functions\\get_key_loop.mcfunction', 'a') as f:
    f.write('execute ')
    for i in range(16):
        f.write(f'if score Global button_{hex(i)[2:]} matches 0 ')
    f.write('run scoreboard players set Global halt 1\n')

    for i in range(16):
        f.write(f'execute if score Global PC_nibble_2 matches {i} run scoreboard players operation Global V{hex(i)[2:].upper()} = Global result\n')
