#Crimson Tardis

scoreboard players operation @s BIN /= 2 NUM
execute if score @s RNG >= @s BIN run tag @e[tag=RNG,distance=..1,sort=random,limit=1] add NUM

execute if entity @e[tag=RNG,tag=FULL,tag=NUM,distance=..1] run scoreboard players operation @s NUM += @s BIN
execute if entity @e[tag=RNG,tag=FULL,tag=NUM,distance=..1] run scoreboard players operation @s RNG -= @s BIN

tag @e[tag=RNG,distance=..1] remove NUM

execute if score @s BIN > 1 NUM run function rng:step_3
execute if score @s BIN = 1 NUM run scoreboard players set @s RNG 0

