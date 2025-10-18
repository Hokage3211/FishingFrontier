advancement revoke @p only fishingrework:progression/angler_guide_pickup
clear @p minecraft:knowledge_book[minecraft:recipes=["fishingrework:angler_guide"]] 1
data remove storage fishingrework:data tempInt
execute store success storage fishingrework:data tempInt int 1 if predicate fishingrework:tier_unlocked/1 run give @p book 1
execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/2 run give @p book 1
execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/3 run give @p book 1
execute store success storage fishingrework:data tempInt int 1 unless data storage fishingrework:data tempInt if predicate fishingrework:tier_unlocked/4 run give @p book 1
