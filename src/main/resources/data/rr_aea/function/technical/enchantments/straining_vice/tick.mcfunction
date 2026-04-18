execute as @s[scores={aea.ench.strain_timer=80..},predicate=rr_aea:player_conditions/8_tick] run damage @s 0.66 rr_aea:strain by @s from @s
execute as @s[scores={aea.ench.strain_timer=80..},predicate=rr_aea:player_conditions/8_tick] run effect give @s nausea 3 0 true
execute as @s[scores={aea.ench.strain_timer=80..},predicate=rr_aea:player_conditions/8_tick] run effect give @s weakness 20 1 true
execute as @s[scores={aea.ench.strain_timer=200..},predicate=rr_aea:player_conditions/8_tick] run effect give @s blindness 6 0 true

scoreboard players set @s[scores={aea.system.bow_used=1..}] aea.ench.unrest_timer 4