execute if score Global pixel_663 matches 1 run scoreboard players set Global VF 1
execute if score Global pixel_663 matches 1 run scoreboard players set Global erased 1
execute if score Global pixel_663 matches 1 run scoreboard players set Global pixel_663 0
execute unless score Global VF matches 1 if score Global pixel_663 matches 0 run scoreboard players set Global pixel_663 1
