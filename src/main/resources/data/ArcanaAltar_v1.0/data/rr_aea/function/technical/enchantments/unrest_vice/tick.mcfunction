execute as @s[scores={aea.ench.unrest_timer=1..,aea.system.bow_used=1..}] run damage @s 2.5 rr_aea:unrest by @s from @s
execute as @s[scores={aea.ench.unrest_timer=1..,aea.system.bow_used=1..}] run effect give @s nausea 8 0 true
execute as @s[scores={aea.ench.unrest_timer=1..,aea.system.bow_used=1..}] run effect give @s hunger 15 3 true

scoreboard players set @s[scores={aea.system.bow_used=1..}] aea.ench.unrest_timer 4