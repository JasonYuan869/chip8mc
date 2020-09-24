for x in range(4):
    with open(f'..\\data\\cpu\\functions\\stack_switch\\read_stack\\read_stack_{4*x}-{4*x+3}.mcfunction', 'a') as f:
        for i in range(4):
            i = 4*x+i
            f.write(f'execute if score Global SP matches {i} run scoreboard players operation Global stack_value = Global stack_{i}\n')
