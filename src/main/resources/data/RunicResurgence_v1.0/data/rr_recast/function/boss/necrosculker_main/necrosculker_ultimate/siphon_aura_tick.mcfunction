execute rotated ~ ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~45 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~90 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~135 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~180 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-45 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-90 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-135 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]

particle sculk_charge_pop ~ ~0.125 ~ 1.25 0.125 1.25 0 2 force @a[distance=..12]
particle sculk_soul ~ ~0.125 ~ 1.25 0.125 1.25 0 1 force @a[distance=..12]

execute as @e[tag=rr.boss.summon,distance=..4] at @s run effect give @s speed 8 0 true
execute as @e[tag=rr.boss.summon,distance=..4] at @s run effect give @s regeneration 8 1 true
execute as @e[tag=rr.boss.summon,distance=..4] at @s run particle sculk_soul ~ ~1 ~ 0.12 0.5 0.12 0.03 1 normal

playsound minecraft:block.trial_spawner.ambient_ominous hostile @a[distance=..6] ~ ~ ~ 0.2 0.75 0