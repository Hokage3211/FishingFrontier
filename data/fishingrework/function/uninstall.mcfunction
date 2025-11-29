scoreboard objectives remove fr_data
scoreboard objectives remove fisherman_id
scoreboard objectives remove frw_tl
scoreboard objectives remove fished_count
scoreboard objectives remove FishingFrontier_RequestEncylopediaPiscandi

data remove storage fishingrework:data installedv1

#========================================
#Debug commands:

#Throw out your bobber and use this to draw the fisherman's set loot table (re-cast each time you change your luck)
#/execute as @n[type=minecraft:fishing_bobber] run loot spawn ~ ~ ~ fish fishingrework:gameplay/fishing/fisherman_set ~ ~ ~

#SET THESE BACK TO 0 WHEN DONE IF YOU WANT TO RESTORE NORMAL FUNCTIONALITY
#Enable "open water" loot (treasure, etc)
#/data modify storage fishingrework:data is_in_open_lava set value 1

#1 is fish, 2 is anti-fish, 3 is both
#/data modify storage fishingrework:data chum_state set value 1

#set luck tier 1 through 4
#/data modify storage fishingrework:data luck_tier set value 1

#Throw out your bobber and run this in a command block on repeat to sample the loot table rapidly
#Water fishing:
#/execute at @n[type=minecraft:fishing_bobber] as @p run loot spawn ~ ~ ~ fish minecraft:gameplay/fishing ~ ~ ~ mainhand

#Lava fishing (may need to set coords to safe block so items are not destroyed):
#/execute at @n[type=minecraft:fishing_bobber] as @p run loot spawn ~ ~ ~ fish fishingrework:lava_fish ~ ~ ~ mainhand