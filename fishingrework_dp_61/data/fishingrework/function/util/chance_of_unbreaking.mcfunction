#execute from player
scoreboard players set $temp fr_data 0
#get level of unbreaking on the player's fishing rod item
#data get entity hokage3211 SelectedItem.components.minecraft:enchantments.levels.minecraft:unbreaking
#                           Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.minecraft:unbreaking
execute unless predicate fishingrework:mainhand_fishing_rod if predicate fishingrework:offhand_fishing_rod store result score $temp fr_data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.minecraft:unbreaking
execute if predicate fishingrework:mainhand_fishing_rod store result score $temp fr_data run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:unbreaking
#$temp fr_data has level of unbreaking
scoreboard players operation #temp2 fr_data = $temp fr_data
scoreboard players operation $temp fr_data *= #100 fr_data
scoreboard players operation #temp2 fr_data += #1 fr_data
scoreboard players operation $temp fr_data /= #temp2 fr_data
execute store result score #temp3 fr_data run random value 0..100
execute if score #temp3 fr_data > $temp fr_data run return 1
return fail