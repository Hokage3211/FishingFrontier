#executed from a marker to track a bobber, $active_caster fr_data is current fisherman id

tag @s add fishing_bobber_tracker
scoreboard players operation @s fisherman_id = $active_caster fr_data
#debug line to tell id set
#tellraw @a ["", {"selector":"@s"}, ": ", {"score":{"objective":"fisherman_id", "name":"@s"}}]