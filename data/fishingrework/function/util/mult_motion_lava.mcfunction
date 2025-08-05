#multiply motion by 3.5 (originally)
#                                                                                   0.00
#execute store result entity @s Motion[0] double .011 run data get entity @s Motion[0] 100
execute store result score #maxCheck fr_data run data get entity @s Motion[0] 180
scoreboard players operation #maxCheck fr_data < #900 fr_data
execute store result entity @s Motion[0] double .01 run scoreboard players get #maxCheck fr_data

#execute store result entity @s Motion[1] double .022 run data get entity @s Motion[1] 100
execute store result score #maxCheck fr_data run data get entity @s Motion[1] 200
#scoreboard players operation #debug fr_data = #maxCheck fr_data
scoreboard players operation #maxCheck fr_data > #145 fr_data
scoreboard players operation #maxCheck fr_data < #900 fr_data
execute store result entity @s Motion[1] double .01 run scoreboard players get #maxCheck fr_data

#execute store result entity @s Motion[2] double .011 run data get entity @s Motion[2] 100
execute store result score #maxCheck fr_data run data get entity @s Motion[2] 180
scoreboard players operation #maxCheck fr_data < #900 fr_data
execute store result entity @s Motion[2] double .01 run scoreboard players get #maxCheck fr_data

#old code zone
#multiply y by 2, x and z by 3
#execute store result storage fishingrework:data tempint double 4.6 run data get entity @s Motion[2]
#data modify entity @s Motion[2] set from storage fishingrework:data tempint
