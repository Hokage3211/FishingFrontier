scoreboard players set $temp fr_data 0
execute store success score $temp fr_data on vehicle if entity @s
execute if score $temp fr_data matches 0 run kill @s