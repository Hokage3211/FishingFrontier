advancement revoke @s only fishingrework:progression/angler_guide_pickup
data remove storage fishingrework:data tempInt

clear @s minecraft:knowledge_book[minecraft:recipes=["fishingrework:angler_guide"]] 1

scoreboard players enable @s FishingFrontier_RequestEncylopediaPiscandi
recipe give @s fishingrework:angler_guide

execute as @s run function fishingrework:advancement_grant/give_info_book

#execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/4 run give @s book 1
#execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/3 run give @s book 1
#execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/2 run give @s book 1

