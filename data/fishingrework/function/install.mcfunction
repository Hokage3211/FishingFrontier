tellraw @a "[Installed fishing rework]"

scoreboard objectives add fr_data minecraft.used:minecraft.fishing_rod
scoreboard objectives add fisherman_id dummy
scoreboard objectives add frw_tl dummy
scoreboard objectives add fished_count dummy
scoreboard objectives add FishingFrontier_RequestEncylopediaPiscandi trigger

#numerical value holders
scoreboard players set #100000 fr_data 100000
scoreboard players set #1000 fr_data 1000
scoreboard players set #900 fr_data 900
scoreboard players set #145 fr_data 145
scoreboard players set #100 fr_data 100
scoreboard players set #80 fr_data 80
scoreboard players set #40 fr_data 40
scoreboard players set #10 fr_data 10
scoreboard players set #20 fr_data 20
#catch reaction time
scoreboard players set #catch_time fr_data 20
scoreboard players set #9 fr_data 9
scoreboard players set #animation_distance fr_data 8
#amount that bobber will try to float in lava
scoreboard players set #float_amount fr_data 30
scoreboard players set #1 fr_data 1
scoreboard players set #-1 fr_data -1

#for lava fishing wait times
scoreboard players set #wait_min_ticks fr_data 100
scoreboard players set #wait_max_ticks fr_data 600

#for square root
scoreboard players set #2 fr_data 2
scoreboard players set #559 fr_data 559
scoreboard players set #32768 fr_data 32768


# \/ higher = linear increase to y arc height, default 6600
#scoreboard players set #6600 fr_data 6600
# \/ lower = more distance means higher y arc height, default 66
#scoreboard players set #66 fr_data 80

execute as @a if predicate fishingrework:tier_unlocked/1 run function fishingrework:advancement_grant/request_book
execute as my1TINYwolf run function fishingrework:advancement_grant/give_full_book