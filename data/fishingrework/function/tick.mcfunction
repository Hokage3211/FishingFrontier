execute as @a run function fishingrework:tick/player_tick

execute as @e[type=minecraft:marker,tag=fishing_bobber_tracker] run function fishingrework:tick/tracker_tick

execute as @e[type=fishing_bobber] run function fishingrework:tick/bobber

execute as @e[type=armor_stand,tag=lava_fish_item] at @s run function fishingrework:tick/lavafish_item_tick

execute as @e[tag=frw_cleanup] run function fishingrework:tick/cleanup_tag
