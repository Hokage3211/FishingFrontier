#executed from a player who just used (cast) a rod at some point last tick

#tellraw @s "Used rod!"
scoreboard players set @s fr_data 0

#store active caster's ID for setting score to others
execute store result score $active_caster fr_data run scoreboard players get @s fisherman_id
#find any matching trackers with id and process their items then die
execute as @e[type=minecraft:marker,tag=fishing_bobber_tracker] at @s if score @s fisherman_id = $active_caster fr_data run function fishingrework:fish_loot_system/tracker_final_step
#find all bobbers that aren't linked via frw_linked_bobber and link them to current score
execute as @e[type=minecraft:fishing_bobber,tag=!frw_linked_bobber] run function fishingrework:util/link_bobber

#give advancements based on luck
execute store result score $luck_temp frw_tl run attribute @s minecraft:generic.luck get
execute if score $luck_temp frw_tl matches 1.. if entity @s[advancements={fishingrework:enchantment_info/live_catch=true}] run advancement grant @s only fishingrework:enchantment_info/live_catch_progression/live_catch_t2
execute if score $luck_temp frw_tl matches 1.. if entity @s[advancements={fishingrework:enchantment_info/treasure_hunter=true}] run advancement grant @s only fishingrework:enchantment_info/treasure_hunter_progression/treasure_t2

execute if score $luck_temp frw_tl matches 2.. if entity @s[advancements={fishingrework:enchantment_info/live_catch=true}] run advancement grant @s only fishingrework:enchantment_info/live_catch_progression/live_catch_t3
execute if score $luck_temp frw_tl matches 2.. if entity @s[advancements={fishingrework:enchantment_info/treasure_hunter=true}] run advancement grant @s only fishingrework:enchantment_info/treasure_hunter_progression/treasure_t3

execute if score $luck_temp frw_tl matches 3.. if entity @s[advancements={fishingrework:enchantment_info/live_catch=true}] run advancement grant @s only fishingrework:enchantment_info/live_catch_progression/live_catch_t4
execute if score $luck_temp frw_tl matches 3.. if entity @s[advancements={fishingrework:enchantment_info/treasure_hunter=true}] run advancement grant @s only fishingrework:enchantment_info/treasure_hunter_progression/treasure_t4

execute if score $luck_temp frw_tl matches 4.. if entity @s[advancements={fishingrework:enchantment_info/live_catch=true}] run advancement grant @s only fishingrework:enchantment_info/live_catch_progression/live_catch_t5
execute if score $luck_temp frw_tl matches 4.. if entity @s[advancements={fishingrework:enchantment_info/treasure_hunter=true}] run advancement grant @s only fishingrework:enchantment_info/treasure_hunter_progression/treasure_t5

#execute if score $result fr_data matches 1.. run say bobber found!

#tag @s add has_bobber_out
