with open('..\data\\renderer\\functions\init.mcfunction','a') as f:
    for i in range(2048):
        f.write(f'scoreboard objectives add pixel_{i} dummy\n')
    f.write('\n# Initialize to zero\n')

    for i in range(2048):
        f.write(f'scoreboard players set Global pixel_{i} 0\n')
