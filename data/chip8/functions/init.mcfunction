# Disable commandFeedback
gamerule sendCommandFeedback false

# Initialize constants
scoreboard objectives add Constant dummy
scoreboard players set c1_n Constant -1
scoreboard players set c1 Constant 1
scoreboard players set c2 Constant 2
scoreboard players set c3 Constant 3
scoreboard players set c4 Constant 4
scoreboard players set c8 Constant 8
scoreboard players set c10 Constant 10
scoreboard players set c15 Constant 15
scoreboard players set c16 Constant 16
scoreboard players set c32 Constant 32
scoreboard players set c64 Constant 64
scoreboard players set c100 Constant 100
scoreboard players set c128 Constant 128
scoreboard players set c256 Constant 256
scoreboard players set c4096 Constant 4096
scoreboard players set c8192 Constant 8192

# Initialize important global variables
scoreboard objectives add started dummy
scoreboard objectives add enable_debug dummy
scoreboard objectives add halt dummy
scoreboard players set Global started 0
scoreboard players set Global enable_debug 1
scoreboard players set Global halt 0

# Initialize sub-modules
function keyboard:init
function renderer:init
function cpu:init
function rng:initiate
