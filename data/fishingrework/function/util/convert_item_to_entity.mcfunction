execute unless data entity @s Item.components.minecraft:custom_data.fishedcommand run return fail
#we verified we have the data
tag @s add summoning
execute unless block ~ ~ ~ minecraft:lava run function fishingrework:util/mult_motion
execute if block ~ ~ ~ lava run function fishingrework:util/mult_motion_lava
$execute at @s run $(fishedcommand)
data modify storage fishingrework:data Motion set from entity @s Motion
execute at @s as @e[distance=0..0.000245,tag=!summoning] run data modify entity @s Motion set from storage fishingrework:data Motion
kill @s
