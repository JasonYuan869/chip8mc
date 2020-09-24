# Decrement DT and ST (supposed to be 60 Hz but MC is limited at 20 Hz)
execute if score Global DT matches 1.. run scoreboard players remove Global DT 1
execute if score Global ST matches 1.. run scoreboard players remove Global ST 1
