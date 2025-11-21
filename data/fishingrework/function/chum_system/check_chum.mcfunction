#executed from bobber nearby chum
scoreboard players set @s frw_tc 0
execute if entity @e[type=area_effect_cloud,distance=0..5,tag=frw_fish_chum] run scoreboard players add @s frw_tc 1
execute if entity @e[type=area_effect_cloud,distance=0..5,tag=frw_anti_chum] run scoreboard players add @s frw_tc 2

##copy our chum value to tracker
execute store result score $active_caster fr_data run scoreboard players get @s fisherman_id
scoreboard players operation #temp frw_tc = @s frw_tc
#find any matching trackers with id and copy to them
execute as @e[type=minecraft:marker,tag=fishing_bobber_tracker] at @s if score @s fisherman_id = $active_caster fr_data run scoreboard players operation @s frw_tc = #temp frw_tc