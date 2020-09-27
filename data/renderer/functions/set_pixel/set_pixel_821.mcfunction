execute if score Global pixel_821 matches 1 run scoreboard players set Global VF 1
execute if score Global pixel_821 matches 1 run scoreboard players set Global erased 1
execute if score Global pixel_821 matches 1 run scoreboard players set Global pixel_821 0
execute unless score Global VF matches 1 if score Global pixel_821 matches 0 run scoreboard players set Global pixel_821 1
