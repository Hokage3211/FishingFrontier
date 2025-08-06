#execute at the surface of the lava by the lava fish item
#execute if predicate {condition:"entity_properties",entity:"this",predicate:{periodic_tick:2}} run function fishingrework:lava_fish/lava_fish_particles
function fishingrework:lava_fish/lava_fish_particles

#@s frw_tl has animation time + #catch_time fr_data for the time it takes to catch something
scoreboard players operation $temp fr_data = @s frw_tl
scoreboard players operation $temp fr_data += #catch_time fr_data

#tellraw @p ["","timer: ",{"score":{"name":"@s","objective":"frw_tl"}}," ",{"score":{"name":"@s","objective":"fr_data"}}," ",{"score":{"name":"$temp","objective":"fr_data"}}]
#only play animation if within animation timer
execute if score @s fr_data <= $temp fr_data if score @s fr_data >= #catch_time fr_data run function fishingrework:lava_fish/catch_indicator_start