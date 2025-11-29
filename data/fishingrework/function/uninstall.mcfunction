scoreboard objectives remove fr_data
scoreboard objectives remove fisherman_id
scoreboard objectives remove frw_tl
scoreboard objectives remove fished_count
scoreboard objectives remove FishingFrontier_RequestEncylopediaPiscandi

data remove storage fishingrework:data installedv1


#Debug commands:
#Throw out your bobber and use this to draw the fisherman's set loot table (re-cast each time you change your luck)
#/execute as @n[type=minecraft:fishing_bobber] run loot spawn ~ ~ ~ fish fishingrework:gameplay/fishing/fisherman_set ~ ~ ~

#Throw out your bobber and run this in a command block on repeat to sample the loot table rapidly
#water fishing:
#/execute as @n[type=minecraft:fishing_bobber] run loot spawn ~ ~1 ~ fish minecraft:gameplay/fishing ~ ~ ~
#lava fishing:
#/execute as @n[type=minecraft:fishing_bobber] run loot spawn ~ ~1 ~ fish fishingrework:lava_fish ~ ~ ~