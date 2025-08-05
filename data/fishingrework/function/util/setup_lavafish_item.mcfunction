#executed from the lavafish item

#link fisherman id
scoreboard players operation @s fisherman_id = $temp fr_data
#set owner UUID from tempUUID
#data modify entity @s Owner set from storage fishingrework:data tempUUID
#set owner motion from saved motion
data modify entity @s Motion set from storage fishingrework:data Motion
#try setting fishing timer
function fishingrework:lava_fish/reset_fishing_timer
execute as @s at @s run function fishingrework:lava_fish/random_rotate
