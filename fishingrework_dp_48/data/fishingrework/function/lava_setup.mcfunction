#executed as a bobber
scoreboard players operation $temp fr_data = @s fisherman_id
#if our player doesn't have a lava fishing rod, return here
execute as @a if score @s fisherman_id = $temp fr_data unless predicate fishingrework:can_lava_fish run return fail
data modify storage fishingrework:data Motion set from entity @s Motion
tag @s add lava_fishing
#execute as @a if score @s fisherman_id = $temp fr_data run data modify storage fishingrework:data tempUUID set from entity @s UUID
#fireproof, almost dead, unpickupable, undespawnable, tagged new_lava_fish_item + lava_fish_item, no mining
#summon item ~ ~ ~ {Age:-32768,PickupDelay:32767,Tags:["new_lava_fish_item","lava_fish_item"],Item:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:fire_resistant":{},"minecraft:damage":59,"minecraft:custom_data":{banned_item:1b},"minecraft:tool":{default_mining_speed:0}}}}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["new_lava_fish_item","lava_fish_item"],attributes:[{id:"minecraft:generic.scale",base:.06}],DisabledSlots:4144959,active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}]}
execute at @s run ride @s mount @e[type=armor_stand,tag=new_lava_fish_item,limit=1]
tag @e[tag=new_lava_fish_item] remove new_lava_fish_item
execute on vehicle as @s run function fishingrework:util/setup_lavafish_item
#say lava setup!