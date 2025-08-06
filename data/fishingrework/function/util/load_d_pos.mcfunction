data modify storage fishingrework:data tempPos set from entity @s Pos
execute store result score $dx fr_data run data get storage fishingrework:data tempPos[0]
execute store result score $dy fr_data run data get storage fishingrework:data tempPos[1]
execute store result score $dz fr_data run data get storage fishingrework:data tempPos[2]