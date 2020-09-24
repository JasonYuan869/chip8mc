# 0 84 -32, 0 15 31
import math

with open('..\data\\renderer\\functions\draw_frame.mcfunction', 'a') as f:
    for i in range(2048):
        f.write(f'execute if score Global pixel_{i} matches 1 run setblock {0} {84 - math.floor(i/64)} {-32 + (i % 64)} black_wool\n')
