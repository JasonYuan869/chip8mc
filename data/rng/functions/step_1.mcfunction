#Crimson Tardis

scoreboard players operation @s BIN *= 2 NUM
execute if score @s BIN > @s RNG run function rng:step_2
execute unless score @s BIN > @s RNG run function rng:step_1




