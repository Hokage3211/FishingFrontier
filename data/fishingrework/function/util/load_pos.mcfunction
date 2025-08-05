data modify storage fishingrework:data tempPos set from entity @s Pos
execute store result score $x fr_data run data get storage fishingrework:data tempPos[0]
execute store result score $y fr_data run data get storage fishingrework:data tempPos[1]
execute store result score $z fr_data run data get storage fishingrework:data tempPos[2]