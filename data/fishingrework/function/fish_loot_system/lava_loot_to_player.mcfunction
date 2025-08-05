#executed from the lava fish item who's been reeled in (bobber gone) and needs to throw an item at the player

#tellraw @a "Looting!"

scoreboard players operation #temp2 fr_data = @s fisherman_id
scoreboard players operation @a fisherman_id -= #temp2 fr_data
#target @p[scores={fisherman_id=0}] for the linked player

execute as @p[scores={fisherman_id=0}] run tag @s add active_fisher
#prep fishingrerok:data luck_tier so loot table can check it
execute as @p[scores={fisherman_id=0}] run function fishingrework:fish_loot_system/store_luck_tier
scoreboard players operation @a fisherman_id += #temp2 fr_data

#if player is more than 31 blocks away, need to not give loot
execute at @s if entity @p[tag=active_fisher,distance=31..] run kill @s
execute at @s if entity @p[tag=active_fisher,distance=31..] run return run tag @s remove active_fisher

#check player for holding any fishing rod
execute as @p[tag=active_fisher] unless predicate fishingrework:holding_fishing_rod run return fail

#execute if entity @p[tag=active_fisher] run tellraw @a "found player!"

#prep fishingrework:data is_in_open_lava so the loot table can check it
function fishingrework:fish_loot_system/is_in_open_lava

#spawn loot item at the location of bobber
execute at @s as @p[tag=active_fisher] if predicate fishingrework:mainhand_fishing_rod run loot spawn ~ ~ ~ fish fishingrework:lava_fish ~ ~ ~ mainhand
execute at @s as @p[tag=active_fisher] unless predicate fishingrework:mainhand_fishing_rod if predicate fishingrework:offhand_fishing_rod run loot spawn ~ ~ ~ fish fishingrework:lava_fish ~ ~ ~ offhand

#clear loot temp storage data so others don't match the predicates accidentally
function fishingrework:fish_loot_system/clear_loot_data_storage

#finish item (set data, throw to player, convert item to entity if needed
execute as @e[type=item,distance=0..0.000245,nbt={Age:0s}] at @s run function fishingrework:fish_loot_system/finish_lava_item
#execute as @e[type=item,distance=0..0.000245,nbt={Age:0s}] as @s run say "I'm the lava fished item!"

#damage item
execute as @p[tag=active_fisher,gamemode=!creative] at @s if predicate fishingrework:mainhand_fishing_rod if function fishingrework:util/chance_of_unbreaking run function fishingrework:util/damage_mainhand
execute as @p[tag=active_fisher,gamemode=!creative] at @s unless predicate fishingrework:mainhand_fishing_rod if predicate fishingrework:offhand_fishing_rod if function fishingrework:util/chance_of_unbreaking run function fishingrework:util/damage_offhand

#summon xp orb with random experience
execute store result score #temp4 fr_data run random value 3..9
execute at @p[tag=active_fisher] summon experience_orb store result entity @s Value int 1 run scoreboard players get #temp4 fr_data

#add to their tracked score and remove the tag
execute as @p[tag=active_fisher] run scoreboard players add @s fished_count 1
execute as @p[tag=active_fisher] run tag @s remove active_fisher
