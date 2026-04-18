execute rotated ~ ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~45 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~90 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~135 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~180 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-45 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-90 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]
execute rotated ~-135 ~ run particle reverse_portal ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..12]

execute store result entity @s data.Pos.X float 0.1 run random value -30..30
execute store result entity @s data.Pos.Z float 0.1 run random value -30..30
execute store result entity @s data.Pos.rotation_Y_start float 0.1 run random value 0..3599
execute store result entity @s data.Pos.rotation_Y_end float 0.1 run random value -10..10

particle sculk_charge_pop ~ ~0.125 ~ 1.25 0.125 1.25 0 2 force @a[distance=..12]
particle sculk_soul ~ ~0.125 ~ 1.25 0.125 1.25 0 1 force @a[distance=..12]

playsound minecraft:block.trial_spawner.ambient_ominous hostile @a[distance=..6] ~ ~ ~ 0.15 0.8 0