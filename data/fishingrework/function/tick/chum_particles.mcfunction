#overlayed in: 61
execute if entity @s[tag=frw_fish_chum] if block ~ ~ ~ minecraft:water run particle effect{color:[0.055,0.290,.761]} ~ ~ ~ 2 0 2 0.1 7 normal
execute if entity @s[tag=frw_fish_chum] if block ~ ~ ~ minecraft:lava run particle effect{color:[0.761,0.364,0.170]} ~ ~ ~ 2 0 2 0.1 10 normal

execute if entity @s[tag=frw_anti_chum] run particle effect{color:[0.2,0.1,0.1]} ~ ~ ~ 2 0 2 0.1 10 normal
