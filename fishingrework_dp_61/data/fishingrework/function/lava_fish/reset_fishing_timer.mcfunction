#executed from the armor stand used for lava fishing

scoreboard players set $temp fr_data 0
#get level of lure on the player's fishing rod item
#data get entity hokage3211 SelectedItem.components.minecraft:enchantments.levels.minecraft:lure
#                           Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.minecraft:lure
scoreboard players operation #temp2 fr_data = @s fisherman_id
scoreboard players operation @a fisherman_id -= #temp2 fr_data
execute as @p[scores={fisherman_id=0}] unless predicate fishingrework:mainhand_fishing_rod if predicate fishingrework:offhand_fishing_rod store result score $temp fr_data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.minecraft:lure
execute as @p[scores={fisherman_id=0}] if predicate fishingrework:mainhand_fishing_rod store result score $temp fr_data run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:lure
scoreboard players operation @a fisherman_id += #temp2 fr_data

scoreboard players operation $temp fr_data *= #100 fr_data
# $temp = lure amount * 100 (ticks)
# #temp2 = extra waiting time (1 - 4 seconds)
# #temp3 = wait_min_ticks (affected by lure)
# #temp4 = wait_max_ticks (affected by lure)
# @s fr_data = actual chosen catch time (using macros + random value)
scoreboard players operation #temp3 fr_data = #wait_min_ticks fr_data
scoreboard players operation #temp3 fr_data -= $temp fr_data
scoreboard players operation #temp4 fr_data = #wait_max_ticks fr_data
scoreboard players operation #temp4 fr_data -= $temp fr_data

execute store result storage fishingrework:data random_range.min int 1 run scoreboard players get #temp3 fr_data
execute store result storage fishingrework:data random_range.max int 1 run scoreboard players get #temp4 fr_data
execute store result score @s fr_data run function fishingrework:util/macro_random with storage fishingrework:data random_range

#if it's <= 0 now, abort, this will get triggered again
execute if score @s fr_data matches ..0 run scoreboard players set @s fr_data -1
execute if score @s fr_data matches ..0 run return 0

#create random animation time (1 - 4 seconds) (20 - 80)
execute store result storage fishingrework:data random_range.min int 1 run scoreboard players get #20 fr_data
execute store result storage fishingrework:data random_range.max int 1 run scoreboard players get #80 fr_data
execute store result score @s frw_tl run function fishingrework:util/macro_random with storage fishingrework:data random_range
#scoreboard players operation @s frw_tl = #40 fr_data
#add the animation to the catch time
scoreboard players operation @s fr_data += @s frw_tl

#@s frw_tl contains the animation time now

#add catch timer offset at end
scoreboard players operation @s fr_data += #catch_time fr_data