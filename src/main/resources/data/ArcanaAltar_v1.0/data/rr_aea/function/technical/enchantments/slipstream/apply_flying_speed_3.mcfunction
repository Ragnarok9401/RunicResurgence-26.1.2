execute store result score @s aea.math.A run data get entity @s Pos[1] 100

execute if score @s aea.math.A matches 10000..14999 run attribute @s flying_speed modifier add rr_aea:slipstream.flying_speed 0.3 add_multiplied_base
execute if score @s aea.math.A matches 15000..19999 run attribute @s flying_speed modifier add rr_aea:slipstream.flying_speed 0.6 add_multiplied_base
execute if score @s aea.math.A matches 20000.. run attribute @s flying_speed modifier add rr_aea:slipstream.flying_speed 0.9 add_multiplied_base