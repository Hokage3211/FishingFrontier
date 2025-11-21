#executed as player we need to store the primary lure enchantment on
execute as @p[scores={fisherman_id=0}] unless predicate fishingrework:mainhand_fishing_rod if predicate fishingrework:offhand_fishing_rod store result score $temp fr_data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.minecraft:lure
execute as @p[scores={fisherman_id=0}] if predicate fishingrework:mainhand_fishing_rod store result score $temp fr_data run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:lure
