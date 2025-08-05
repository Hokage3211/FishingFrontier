scoreboard players set $temp fr_data 0
execute store success score $temp fr_data on vehicle if entity @s
execute if score $temp fr_data matches 1 run return fail
#it needs to be cleaned up, check for slimes to clean up and kill self
execute as @e[type=slime,distance=0.1..10,predicate=fishingrework:harmless_slime,limit=4,name="Serpent Body"] run tp @s ~ ~-300 ~
execute as @e[type=magma_cube,distance=0.1..10,predicate=fishingrework:harmless_slime,limit=4,name="Serpent Body"] run tp @s ~ ~-300 ~
kill @s