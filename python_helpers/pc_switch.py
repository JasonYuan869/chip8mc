# 0x0 to 0xFFF (0-4095) accessible memory
# 4 switch-case per file

for a in range(6):
    c = 0
    for n in range(4**a):
        with open(f'..\\data\\cpu\\functions\\pc_switch\\{4**(6-a)}read_pc_{(4**(6-a))*n}-{((4**(6-a))*n)+((4**(6-a))-1)}.mcfunction', 'w') as f:
            if a != 5:
                for i in range(4):
                    p = 4**(5-a)
                    q = c+(i*(4**(5-a)))
                    r = c+((i+1)*(4**(5-a)))-1
                    f.write(f'execute if score Global PC matches {q}..{r} run function cpu:pc_switch/{p}read_pc_{q}-{r}\n')
                c += 4**(6-a)
            else:
                for i in range(4):
                    p = 4**(5-a)
                    q = c+(i*(4**(5-a)))
                    r = c+((i+1)*(4**(5-a)))-1
                    f.write(f'execute if score Global PC matches {q} run function cpu:pc_switch/read_two_bytes/read_pc_{q}\n')
                c += 4**(6-a)
"""
for i in range(4095):
    i += 1
    with open(f'..\\data\\cpu\\functions\\pc_switch\\read_two_bytes\\read_pc_{i}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global PC_byte_1 = Global mem_{i}\n'
                f'scoreboard players operation Global PC_byte_2 = Global mem_{i+1}\n\n'
                'function cpu:get_opcode\n')
"""
