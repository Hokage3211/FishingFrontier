#executed from the lavafish item, when they need to play the bobber going down sound
scoreboard players set $result fr_data -1
scoreboard players operation $result fr_data = @s fisherman_id
execute as @a[distance=0..32] if score @s fisherman_id = $result fr_data run playsound minecraft:item.bucket.fill_lava player @s ~ ~ ~ 2 .75 0
execute as @a[distance=0..32] if score @s fisherman_id = $result fr_data run playsound minecraft:entity.fishing_bobber.splash player @s ~ ~ ~ 0.1 1 0.01