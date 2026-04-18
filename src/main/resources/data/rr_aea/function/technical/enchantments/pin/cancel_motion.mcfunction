execute store result entity @s Motion[0] double 0 run data get entity @s Motion[0]
execute store result entity @s Motion[1] double 0 run data get entity @s Motion[1]
execute store result entity @s Motion[2] double 0 run data get entity @s Motion[2]

attribute @s[type=player] movement_speed modifier add rr_aea:enchantment.pin.movement_speed -1 add_multiplied_total
attribute @s[type=player] jump_strength modifier add rr_aea:enchantment.pin.jump_strength -1 add_multiplied_total

effect give @s[type=!player,type=!#rr_aea:pin_immune] slowness 1 99 true
effect give @s[type=!player,type=!#rr_aea:pin_immune] slow_falling 1 99 true

scoreboard players set @s[type=player] aea.ench.pin_timer 1