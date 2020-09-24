#Crimson Tardis

execute as @e[scores={RNG=1..}] run scoreboard players set @s NUM 0
execute as @e[scores={RNG=1..}] run scoreboard players set @s BIN 1
execute as @e[scores={RNG=1..}] at @s run function rng:step_1

scoreboard players set 2 NUM 2
scoreboard players set 1 NUM 1

# Keep rolling new RNG numbers every tick
# This will output a number between 0 and 255 INCLUSIVE
# Scoreboard value is stored in @e[tag=RNG_entity,limit=1] NUM
scoreboard players set @e[tag=RNG_entity] RNG 255

#RNG = input
#NUM = output
