# Disable loop
scoreboard players set Global started 0

tellraw @s [{"text":"Unknown opcode: "},{"text":"0x","color":"red"},{"selector":"@e[scores={print_params1=1,limit=1}]","color":"red"},{"selector":"@e[scores={print_params2=1,limit=1}]","color":"red"},{"selector":"@e[scores={print_params3=1,limit=1}]","color":"red"},{"selector":"@e[scores={print_params4=1,limit=1}]","color":"red"},{"text":"\n"},{"text":"PC: "},{"text":"0x0","color":"red"},{"selector":"@e[scores={print_params5=1,limit=1}]","color":"red"},{"selector":"@e[scores={print_params6=1,limit=1}]","color":"red"},{"selector":"@e[scores={print_params7=1,limit=1}]","color":"red"}]
