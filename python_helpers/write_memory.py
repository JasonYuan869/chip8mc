# 0x0 to 0xFFF (0-4095) accessible memory
# 4 switch-case per file

for a in range(6):
    c = 0
    for n in range(4**a):
        with open(f'..\\data\\cpu\\functions\\memory\\write_memory\\{4**(6-a)}write_memory_{(4**(6-a))*n}-{((4**(6-a))*n)+((4**(6-a))-1)}.mcfunction', 'w') as f:
            if a != 5:
                for i in range(4):
                    p = 4**(5-a)
                    q = c+(i*(4**(5-a)))
                    r = c+((i+1)*(4**(5-a)))-1
                    f.write(f'execute if score Global I matches {q}..{r} run function cpu:memory/write_memory/{p}write_memory_{q}-{r}\n')
                c += 4**(6-a)
            else:
                for i in range(4):
                    p = 4**(5-a)
                    q = c+(i*(4**(5-a)))
                    r = c+((i+1)*(4**(5-a)))-1
                    f.write(f'execute if score Global I matches {q} run scoreboard players operation Global mem_{q} = Global memory_value\n')
                c += 4**(6-a)
"""
for i in range(4095):
    i += 1
    with open(f'..\\data\\cpu\\functions\\memory\\write_memory\\write_memory_{i}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global memory_value = Global mem_{i}\n')
"""
