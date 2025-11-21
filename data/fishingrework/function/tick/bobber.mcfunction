#executed from a bobber
execute as @s[tag=!lava_fishing] at @s if block ~ ~ ~ lava run function fishingrework:lava_setup

#search a 3x3x3 area centered on this, if no lava, run stop
execute if predicate fishingrework:second_timer as @s[tag=lava_fishing] at @s \
unless block ~1 ~1 ~1 lava unless block ~ ~1 ~1 lava unless block ~-1 ~1 ~1 lava \
unless block ~1 ~ ~1 lava unless block ~ ~ ~1 lava unless block ~-1 ~ ~1 lava \
unless block ~1 ~-1 ~1 lava unless block ~ ~-1 ~1 lava unless block ~-1 ~-1 ~1 lava \
unless block ~1 ~1 ~ lava unless block ~ ~1 ~ lava unless block ~-1 ~1 ~ lava \
unless block ~1 ~ ~ lava unless block ~ ~ ~ lava unless block ~-1 ~ ~ lava \
unless block ~1 ~-1 ~ lava unless block ~ ~-1 ~ lava unless block ~-1 ~-1 ~ lava \
unless block ~1 ~1 ~-1 lava unless block ~ ~1 ~-1 lava unless block ~-1 ~1 ~-1 lava \
unless block ~1 ~ ~-1 lava unless block ~ ~ ~-1 lava unless block ~-1 ~ ~-1 lava \
unless block ~1 ~-1 ~-1 lava unless block ~ ~-1 ~-1 lava unless block ~-1 ~-1 ~-1 lava run function fishingrework:lava_fish_stop

#execute as @s[tag=lava_fishing] at @s store result score $temp fr_data run clone ~1 ~1 ~1 ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 filtered lava force
#execute as @s[tag=lava_fishing] if score $temp fr_data matches 0 run function fishingrework:lava_fish_stop

#check if chum effect is nearby
execute at @s at @s if block ~ ~ ~ #fishingrework:chummable_liquid if entity @e[type=area_effect_cloud,tag=frw_chumming_effect, distance=0..5] run function fishingrework:chum_system/check_chum