with open('..\data\cpu\memory\\functions\init.mcfunction', 'a') as f:
    for i in range(16):
        f.write(f'scoreboard objectives add stack_{i} dummy\n')


with open('..\data\cpu\memory\\functions\clear.mcfunction', 'a') as f:
    for i in range(16):
        f.write(f'scoreboard players set Global stack_{i} 0\n')
