tellraw @a "[Loaded up Fishing Rework]"

#runs once and never again
execute unless data storage fishingrework:data installedv4 run function fishingrework:install
data modify storage fishingrework:data installedv4 set value 1

execute as @a[advancements={fishingrework:root=true}] run function fishingrework:advancement_grant/grant_advancements