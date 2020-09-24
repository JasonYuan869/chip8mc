import json
sep = (',', ':')
# Initialize k array
k = [None for _ in range(4)]
for x in range(4):
    with open(f'./keyboardjsons/keyboard{x}.json', 'r') as f:
        # Each k holds a json file
        k[x] = json.load(f)

# Write keyboard init
with open('..\data\keyboard\\functions\init.mcfunction', 'w') as f:
    for i in range(10):
        f.write(f'scoreboard objectives add button_{i} dummy\n')
    for i in ('A', 'B', 'C', 'D', 'E', 'F'):
        f.write(f'scoreboard objectives add button_{i} dummy\n')
    f.write('\n')
    for i in range(10):
        f.write(f'scoreboard players set Global button_{i} 0\n')
    for i in ('A', 'B', 'C', 'D', 'E', 'F'):
        f.write(f'scoreboard players set Global button_{i} 0\n')


with open('.\data\keyboard\\functions\draw_controller.mcfunction', 'w') as f:
    for j in k:
        for a in range(2):
            for b in range(2):
                for c in range(2):
                    for d in range(2):
                        j[0]['color'] = 'gray' if a == 0 else 'white'
                        j[2]['color'] = 'gray' if b == 0 else 'white'
                        j[4]['color'] = 'gray' if c == 0 else 'white'
                        j[6]['color'] = 'gray' if d == 0 else 'white'
                        f.write(f'execute if score Global button_{j[0]["text"][1]} matches {a}'
                            f' if score Global button_{j[2]["text"][1]} matches {b}'
                            f' if score Global button_{j[4]["text"][1]} matches {c}'
                            f' if score Global button_{j[6]["text"][1]} matches {d}'
                            f' run tellraw @s {json.dumps(j, separators=sep)}\n')
        f.write('\n')
