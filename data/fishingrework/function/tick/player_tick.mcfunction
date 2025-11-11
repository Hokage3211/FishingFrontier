execute if score @s fr_data matches 1.. at @s run function fishingrework:used_rod
execute unless score @s fisherman_id matches -2147483648.. store result score @s fisherman_id run scoreboard players add $fishers fisherman_id 1
execute unless score @s FishingFrontier_RequestEncylopediaPiscandi matches 0 at @s run function fishingrework:misc/player_trigger_request