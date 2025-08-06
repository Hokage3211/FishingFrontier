data remove storage fishingrework:data is_in_open_lava
execute store result score #temp2 fr_data run clone ~2 ~2 ~2 ~-2 ~-2 ~-2 ~-2 ~-2 ~-2 filtered minecraft:lava force
execute store result score #temp3 fr_data run clone ~2 ~2 ~2 ~-2 ~-2 ~-2 ~-2 ~-2 ~-2 filtered #minecraft:air force
scoreboard players operation #temp2 fr_data += #temp3 fr_data
execute if score #temp2 fr_data matches 125 run data modify storage fishingrework:data is_in_open_lava set value 1
