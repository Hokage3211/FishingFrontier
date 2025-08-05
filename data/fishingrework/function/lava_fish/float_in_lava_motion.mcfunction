execute store result score $temp fr_data run data get entity @s Motion[1] 1000
scoreboard players operation $temp fr_data += #float_amount fr_data
execute store result entity @s Motion[1] double .001 run scoreboard players get $temp fr_data
