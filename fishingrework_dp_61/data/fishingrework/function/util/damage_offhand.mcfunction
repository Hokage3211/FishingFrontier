



#put the item on an armor stand (to be killed later)
summon armor_stand ~ ~1000 ~ {UUID:[I;4682,7913,9435,80100],NoGravity:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Tags:["frw_cleanup"]}
item replace entity 0000124a-0000-1ee9-0000-24db000138e4 weapon.offhand from entity @s weapon.offhand

#get the current amount of damage done (0 = undamaged) to temp3
execute store result score #temp3 fr_data run data get entity 0000124a-0000-1ee9-0000-24db000138e4 HandItems[1].components.minecraft:damage 1

#get the max damage (0 on item mod = fully depleted durability = bigger number to damage)
item modify entity 0000124a-0000-1ee9-0000-24db000138e4 weapon.offhand [{function:"set_damage",damage:0}]
execute store result score #temp4 fr_data run data get entity 0000124a-0000-1ee9-0000-24db000138e4 HandItems[1].components.minecraft:damage 1

#value we want = (max_damage - current_damage - 1) / max_damage
scoreboard players operation #temp2 fr_data = #temp4 fr_data
scoreboard players operation #temp2 fr_data -= #temp3 fr_data
#add 1 damage if not at zero
execute unless score #temp2 fr_data matches 0 run scoreboard players operation #temp2 fr_data -= #1 fr_data
#multiply to give more resolution in integers
scoreboard players operation #temp2 fr_data *= #100000 fr_data
#debug line: scoreboard players operation $temp fr_data = #temp2 fr_data
scoreboard players operation #temp2 fr_data /= #temp4 fr_data

execute if score #temp2 fr_data matches 0 run playsound minecraft:entity.item.break player @a[distance=0..50] ~ ~ ~ 1 1 0

#execute store result storage fishingrework:data tempfloat.value float 0.00001 run scoreboard players get #temp2 fr_data
item modify entity @s weapon.offhand fishingrework:item_damage

#clean up the armor stand
kill 0000124a-0000-1ee9-0000-24db000138e4