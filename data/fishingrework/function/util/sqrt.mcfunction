# LOAD: {
#     scoreboard objectives add fr_data dummy
#     scoreboard players set #2 fr_data 2
#     scoreboard players set #559 fr_data 559
#     scoreboard players set #32768 fr_data 32768
# }

# INPUT: scoreboard players set #sqrt_in fr_data <x>

execute store result score #t1 fr_data store result score #t2 fr_data store result score #t3 fr_data run scoreboard players operation #sqrt_out fr_data = #sqrt_in fr_data
execute if score #sqrt_in fr_data matches 0..1515359 run scoreboard players operation #sqrt_out fr_data /= #559 fr_data
execute if score #sqrt_in fr_data matches 0..1515359 run scoreboard players add #sqrt_out fr_data 15
execute if score #sqrt_in fr_data matches 1515360.. run scoreboard players operation #sqrt_out fr_data /= #32768 fr_data
execute if score #sqrt_in fr_data matches 1515360.. run scoreboard players add #sqrt_out fr_data 2456
scoreboard players operation #t1 fr_data /= #sqrt_out fr_data
scoreboard players operation #sqrt_out fr_data += #t1 fr_data
scoreboard players operation #sqrt_out fr_data /= #2 fr_data
scoreboard players operation #t2 fr_data /= #sqrt_out fr_data
scoreboard players operation #sqrt_out fr_data += #t2 fr_data
scoreboard players operation #sqrt_out fr_data /= #2 fr_data
scoreboard players operation #t3 fr_data /= #sqrt_out fr_data
scoreboard players operation #sqrt_out fr_data += #t3 fr_data
scoreboard players operation #sqrt_out fr_data /= #2 fr_data
scoreboard players operation #sqrt_in fr_data /= #sqrt_out fr_data
execute if score #sqrt_out fr_data > #sqrt_in fr_data run scoreboard players remove #sqrt_out fr_data 1

# OUTPUT: scoreboard players get #sqrt_out fr_data


#temp x variable = x + 6.6, then divide temp variable by 66
#scoreboard players set $temp fr_data 0
#scoreboard players set #temp2 fr_data 0
#scoreboard players operation $temp fr_data = $x fr_data
#scoreboard players operation #temp2 fr_data = $z fr_data

#execute if score $temp fr_data matches ..-1 run scoreboard players operation $temp fr_data *= #-1 fr_data
#execute if score #temp2 fr_data matches ..-1 run scoreboard players operation #temp2 fr_data *= #-1 fr_data

#scoreboard players operation $temp fr_data > #temp2 fr_data
#temp is now set to the greatest value of the two flat axis
#scoreboard players operation $temp fr_data += #6600 fr_data
#scoreboard players operation $temp fr_data /= #66 fr_data