execute if score @s FishingFrontier_RequestEncylopediaPiscandi matches 1 at @s run function fishingrework:advancement_grant/give_encylopedia
execute if score @s FishingFrontier_RequestEncylopediaPiscandi matches 2 at @s run function fishingrework:misc/get_stats
scoreboard players enable @s FishingFrontier_RequestEncylopediaPiscandi
scoreboard players set @s FishingFrontier_RequestEncylopediaPiscandi 0
