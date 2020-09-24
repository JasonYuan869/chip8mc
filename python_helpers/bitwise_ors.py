with open('..\\data\\cpu\\functions\\bitwise_ops\\or.mcfunction', 'w') as f:
    for q in range(16):
        f.write(f'execute if score Global bitwise_1 matches {q} run function cpu:bitwise_ops/or_{q}\n')

for q in range(16):
    with open(f'..\\data\\cpu\\functions\\bitwise_ops\\or_{q}.mcfunction', 'w') as f:
        for i in range(16):
            f.write(f'execute if score Global bitwise_2 matches {i} run scoreboard players set Global result {i|q}\n')
