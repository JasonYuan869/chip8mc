for p in range(4):
    p += 1
    for i in range(4):
        with open(f'..\\data\\cpu\\functions\\assign_hex_switch\\{p}assign_hex_{4*i}-{(4*i)+3}.mcfunction', 'w') as f:
            for a in range(4):
                f.write(f'execute if score Global PC_nibble_{p} matches {4*i+a} run scoreboard players set @e[tag={hex(4*i+a)[2:].upper()}] print_params{p} 1\n')

for p in range(3):
    q = p + 5
    for i in range(4):
        with open(f'..\\data\\cpu\\functions\\assign_hex_switch\\{q}assign_hex_{4*i}-{(4*i)+3}.mcfunction', 'w') as f:
            for a in range(4):
                f.write(f'execute if score Global PC_value_{p+1} matches {4*i+a} run scoreboard players set @e[tag={hex(4*i+a)[2:].upper()}] print_params{q} 1\n')
