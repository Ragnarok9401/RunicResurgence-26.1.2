scoreboard players add @s aea.ench.pressure_timer 1

playsound minecraft:entity.breeze.idle_air player @a[distance=..30] ~ ~ ~ 0.125 0.8 0

#execute as @s[scores={aea.ench.pressure_timer=1..}] at @s run execute as @e[distance=..2,type=!#rr_aea:magic_ignore] run attribute @s gravity modifier add rr_aea:pressure_gravity 1 add_multiplied_base

execute as @s[scores={aea.ench.pressure_timer=1..15}] at @s run execute as @e[distance=0.01..3.5,type=!#rr_aea:magic_ignore] run damage @s 1 rr_aea:pressure by @p from @p
execute as @s[scores={aea.ench.pressure_timer=16..30}] at @s run execute as @e[distance=0.01..3.5,type=!#rr_aea:magic_ignore] run damage @s 2 rr_aea:pressure by @p from @p
execute as @s[scores={aea.ench.pressure_timer=31..45}] at @s run execute as @e[distance=0.01..3.5,type=!#rr_aea:magic_ignore] run damage @s 4 rr_aea:pressure by @p from @p
execute as @s[scores={aea.ench.pressure_timer=46..60}] at @s run execute as @e[distance=0.01..3.5,type=!#rr_aea:magic_ignore] run damage @s 8 rr_aea:pressure by @p from @p
execute as @s[scores={aea.ench.pressure_timer=61..}] at @s run execute as @e[distance=0.01..3.5,type=!#rr_aea:magic_ignore] run damage @s 16 rr_aea:pressure by @p from @p

execute as @s[scores={aea.ench.pressure_timer=1..15}] at @s run damage @s 0.3 rr_aea:pressure by @s from @s
execute as @s[scores={aea.ench.pressure_timer=16..30}] at @s run damage @s 0.6 rr_aea:pressure by @s from @s
execute as @s[scores={aea.ench.pressure_timer=16}] at @s run playsound minecraft:entity.breeze.death player @a[distance=..30] ~ ~ ~ 0.8 1.1
execute as @s[scores={aea.ench.pressure_timer=31..45}] at @s run damage @s 0.9 rr_aea:pressure by @s from @s
execute as @s[scores={aea.ench.pressure_timer=31}] at @s run playsound minecraft:entity.breeze.death player @a[distance=..30] ~ ~ ~ 0.8 1.3
execute as @s[scores={aea.ench.pressure_timer=46..60}] at @s run damage @s 1.1 rr_aea:pressure by @s from @s
execute as @s[scores={aea.ench.pressure_timer=61}] at @s run playsound minecraft:entity.breeze.death player @a[distance=..30] ~ ~ ~ 0.8 1.5
execute as @s[scores={aea.ench.pressure_timer=61..}] at @s run damage @s 1.2 rr_aea:pressure by @s from @s
execute as @s[scores={aea.ench.pressure_timer=61}] at @s run playsound minecraft:entity.breeze.death player @a[distance=..30] ~ ~ ~ 0.8 1.8
execute as @s[scores={aea.ench.pressure_timer=1..}] run particle small_gust ~ ~0.25 ~ 1 0 1 0.125 4 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=1..}] run particle small_gust ~ ~1 ~ 0.6 0.6 0.6 0.1 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=16..}] run particle small_gust ~ ~0.25 ~ 1.25 0 1.25 0.15 3 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=16..}] run particle small_gust ~ ~1 ~ 0.7 0.7 0.7 0.1 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=31..}] run particle small_gust ~ ~0.25 ~ 1.5 0 1.5 0.175 2 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=31..}] run particle small_gust ~ ~1 ~ 0.8 0.8 0.8 0.1 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=46..}] run particle small_gust ~ ~0.25 ~ 1.75 0 1.75 0.2 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=46..}] run particle small_gust ~ ~1 ~ 0.9 0.9 0.9 0.1 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=61..}] run particle small_gust ~ ~0.25 ~ 1.75 0 1.75 0.2 1 force @a[distance=..40]
execute as @s[scores={aea.ench.pressure_timer=61..}] run particle small_gust ~ ~1 ~ 1 0.9 1 0.1 1 force @a[distance=..40]

advancement revoke @s only aea_adv:enchantments/pressure_blessing/use