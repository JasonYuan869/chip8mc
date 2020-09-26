# 0x0 to 0xFFF (0-4095) accessible memory
# 4 switch-case per file
"""
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
                c += 4**(3-a)
            else:
                for i in range(4):
                    p = 4**(2-a)
                    q = c+(i*(4**(2-a)))
                    r = c+((i+1)*(4**(2-a)))-1
                    f.write(f'execute if score Global pixel matches {q} run function renderer:set_pixel/set_pixel_{q}\n')
                c += 4**(3-a)
"""

for n in range(2):
    with open(f'..\\data\\renderer\\functions\\set_pixel\\1024set_pixel_{1024*n}-{(1024*n)+1023}.mcfunction', 'w') as f:
        p = n * 1024
        q = p + 256
        r = q + 256
        s = r + 256
        f.write(f'execute if score Global pixel matches {p}..{p+255} run function renderer:set_pixel/512set_pixel_{p}-{p+255}\n'
                f'execute if score Global pixel matches {q}..{q+255} run function renderer:set_pixel/512set_pixel_{q}-{q+255}\n'
                f'execute if score Global pixel matches {r}..{r+255} run function renderer:set_pixel/512set_pixel_{r}-{r+255}\n'
                f'execute if score Global pixel matches {s}..{s+255} run function renderer:set_pixel/512set_pixel_{s}-{s+255}\n')

for n in range(8):
    with open(f'..\\data\\renderer\\functions\\set_pixel\\256set_pixel_{256*n}-{(256*n)+255}.mcfunction', 'w') as f:
        p = n * 256
        q = p + 64
        r = q + 64
        s = r + 64
        f.write(f'execute if score Global pixel matches {p}..{p+63} run function renderer:set_pixel/512set_pixel_{p}-{p+63}\n'
                f'execute if score Global pixel matches {q}..{q+63} run function renderer:set_pixel/512set_pixel_{q}-{q+63}\n'
                f'execute if score Global pixel matches {r}..{r+63} run function renderer:set_pixel/512set_pixel_{r}-{r+63}\n'
                f'execute if score Global pixel matches {s}..{s+63} run function renderer:set_pixel/512set_pixel_{s}-{s+63}\n')

for n in range(32):
    with open(f'..\\data\\renderer\\functions\\set_pixel\\64set_pixel_{64*n}-{(64*n)+63}.mcfunction', 'w') as f:
        p = n * 64
        q = p + 16
        r = q + 16
        s = r + 16
        f.write(f'execute if score Global pixel matches {p}..{p+15} run function renderer:set_pixel/512set_pixel_{p}-{p+15}\n'
                f'execute if score Global pixel matches {q}..{q+15} run function renderer:set_pixel/512set_pixel_{q}-{q+15}\n'
                f'execute if score Global pixel matches {r}..{r+15} run function renderer:set_pixel/512set_pixel_{r}-{r+15}\n'
                f'execute if score Global pixel matches {s}..{s+15} run function renderer:set_pixel/512set_pixel_{s}-{s+15}\n')

for n in range(128):
    with open(f'..\\data\\renderer\\functions\\set_pixel\\16set_pixel_{16*n}-{(16*n)+15}.mcfunction', 'w') as f:
        p = n * 16
        q = p + 4
        r = q + 4
        s = r + 4
        f.write(f'execute if score Global pixel matches {p}..{p+3} run function renderer:set_pixel/512set_pixel_{p}-{p+3}\n'
                f'execute if score Global pixel matches {q}..{q+3} run function renderer:set_pixel/512set_pixel_{q}-{q+3}\n'
                f'execute if score Global pixel matches {r}..{r+3} run function renderer:set_pixel/512set_pixel_{r}-{r+3}\n'
                f'execute if score Global pixel matches {s}..{s+3} run function renderer:set_pixel/512set_pixel_{s}-{s+3}\n')

for n in range(512):
    with open(f'..\\data\\renderer\\functions\\set_pixel\\4set_pixel_{4*n}-{(4*n)+3}.mcfunction', 'w') as f:
        p = n * 4
        q = p + 1
        r = q + 1
        s = r + 1
        f.write(f'execute if score Global pixel matches {p} run function renderer:set_pixel/512set_pixel_{p}\n'
                f'execute if score Global pixel matches {q} run function renderer:set_pixel/512set_pixel_{q}\n'
                f'execute if score Global pixel matches {r} run function renderer:set_pixel/512set_pixel_{r}\n'
                f'execute if score Global pixel matches {s} run function renderer:set_pixel/512set_pixel_{s}\n')


"""
for i in range(2047):
    i += 1
    with open(f'..\\data\\renderer\\functions\\set_pixel\\set_pixel_{i}.mcfunction', 'w') as f:
        f.write(f'execute if score Global pixel_{i} matches 1 run scoreboard players set Global pixel_{i} 0\n'
                f'execute if score Global pixel_{i} matches 1 run scoreboard players set Global VF 1\n'
                f'execute if score Global pixel_{i} matches 0 run scoreboard players set Global pixel_{i} 1\n')
"""
