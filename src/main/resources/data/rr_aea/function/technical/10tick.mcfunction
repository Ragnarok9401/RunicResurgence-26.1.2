execute as @a[scores={aea.ench.pin_timer=..0}] run attribute @s jump_strength modifier remove rr_aea:enchantment.pin.jump_strength
execute as @a[scores={aea.ench.pin_timer=..0}] run attribute @s movement_speed modifier remove rr_aea:enchantment.pin.movement_speed
scoreboard players remove @a[scores={aea.ench.pin_timer=1..}] aea.ench.pin_timer 1

scoreboard players remove @a[scores={aea.ench.unrest_timer=1..}] aea.ench.unrest_timer 1

schedule function rr_aea:technical/10tick 10t