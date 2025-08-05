#executed from the lavafish item

#inputs: @s fr_data = catch timer

#                                               (t for catch) / (animation time) * (blocks to travel)
#fishingrework:data tempfloat.value = catch timer - 20(ticks) / 40(ticks) * 4(blocks)

scoreboard players operation $temp fr_data = @s fr_data
scoreboard players operation $temp fr_data -= #catch_time fr_data
#expand integer domain
scoreboard players operation $temp fr_data *= #1000 fr_data
scoreboard players operation $temp fr_data /= @s frw_tl
#adjust this to adjust the amount of blocks out the animation starts
scoreboard players operation $temp fr_data *= #animation_distance fr_data

execute store result storage fishingrework:data tempfloat.value float .001 run scoreboard players get $temp fr_data
#play smoke particle
function fishingrework:lava_fish/smoke_particle_macro_distance with storage fishingrework:data tempfloat
#particle is projected forward at distance of x blocks

