with open('..\data\cpu\\functions\init.mcfunction', 'a') as f:
    for i in range(16):
        f.write(f'scoreboard objectives add V{str(hex(i))[-1].upper()} dummy\n')
    f.write('\n')
    for i in range(16):
        f.write(f'scoreboard players set Global V{str(hex(i))[-1].upper()} 0\n')
