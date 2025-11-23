execute if entity @s[type=block_display] run function fishingrework:cleanups/block_display
execute if entity @s[type=item_display] at @s run function fishingrework:cleanups/item_display
execute if entity @s[type=minecraft:armor_stand] run kill @s
execute store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0] 1
