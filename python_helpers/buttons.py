k = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f']

for i in k:
    with open(f'..\data\keyboard\\functions\\buttons\\button_{i}.mcfunction', 'w') as f:
        f.write(f'# Toggle button {i}\n'
                f'scoreboard players operation Global was_pressed = Global button_{i}\n'
                f'execute if score Global was_pressed matches 1.. run scoreboard players set Global button_{i} 0\n'
                f'execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_{i} 1\n'
                f'function keyboard:draw_controller\n')
