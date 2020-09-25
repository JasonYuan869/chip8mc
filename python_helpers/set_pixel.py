# 0x0 to 0xFFF (0-4095) accessible memory
# 4 switch-case per file

for a in range(3):
    c = 0
    for n in range(4**a):
        with open(f'..\\data\\renderer\\functions\\set_pixel\\{4**(3-a)}set_pixel_{(4**(3-a))*n}-{((4**(3-a))*n)+((4**(3-a))-1)}.mcfunction', 'w') as f:
            if a != 2:
                for i in range(4):
                    p = 4**(2-a)
                    q = c+(i*(4**(2-a)))
                    r = c+((i+1)*(4**(2-a)))-1
                    f.write(f'execute if score Global pixel matches {q}..{r} run function renderer:set_pixel/{p}set_pixel_{q}-{r}\n')
                c += 4**(2-a)
            else:
                for i in range(4):
                    p = 4**(2-a)
                    q = c+(i*(4**(2-a)))
                    r = c+((i+1)*(4**(2-a)))-1
                    f.write(f'execute if score Global pixel matches {q} run function renderer:set_pixel/set_pixel_{q}\n')
                c += 4**(2-a)

for i in range(2047):
    i += 1
    with open(f'..\\data\\renderer\\functions\\set_pixel\\set_pixel_{i}.mcfunction', 'w') as f:
        f.write(f'execute if score Global pixel_{i} matches 1 run scoreboard players set Global pixel_{i} 0\n'
                f'execute if score Global pixel_{i} matches 1 run scoreboard players set Global VF 1\n'
                f'execute if score Global pixel_{i} matches 0 run scoreboard players set Global pixel_{i} 1\n')
