execute positioned ~ ~ ~ summon magma_cube store result entity @s Size byte 1 run random roll 0..2
execute as @e[type=magma_cube,distance=0..0.000245,limit=1] run effect give @s absorption 2 1 false