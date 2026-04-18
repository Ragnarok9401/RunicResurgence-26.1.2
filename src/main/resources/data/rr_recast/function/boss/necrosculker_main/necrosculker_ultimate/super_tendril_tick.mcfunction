# Tendril Waves for Super Tendrils
execute as @s[type=item_display,scores={rr.system.BossTick=1..35}] at @s run particle crit ~ ~0.25 ~ 0.8 0.125 0.8 0.01 2 force @a[distance=..80]
execute as @s[type=item_display,scores={rr.system.BossTick=20}] at @s run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..50] ~ ~ ~ 0.5 0.8 0
execute as @s[type=item_display,scores={rr.system.BossTick=35}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.5 0.5 0
execute as @s[type=item_display,scores={rr.system.BossTick=35}] at @s run playsound minecraft:item.totem.use hostile @a[distance=..50] ~ ~ ~ 0.7 1.575 0
execute as @s[type=item_display,scores={rr.system.BossTick=36}] at @s positioned ~ ~1.5 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/super_wave with entity @s data.rr_recast.tendril_wave
execute as @s[type=item_display,scores={rr.system.BossTick=36}] at @s run tp @s ~ ~4.5 ~
execute as @s[type=item_display,scores={rr.system.BossTick=35..37}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..3,tag=!rr.boss.summon] run damage @s 100 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSUTendrilSuperMain,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @s[type=item_display,scores={rr.system.BossTick=35..37}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..3,tag=!rr.boss.summon] run effect give @s slowness 5 2 true
execute as @s[type=item_display,scores={rr.system.BossTick=35..37}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..3,tag=!rr.boss.summon] run effect give @s weakness 15 1 true
execute as @s[type=item_display,scores={rr.system.BossTick=35..37}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..3,tag=!rr.boss.summon] run effect give @s darkness 10 0 true
execute as @s[type=item_display,scores={rr.system.BossTick=80..89}] at @s run tp @s ~ ~-0.4 ~
execute as @s[type=item_display,scores={rr.system.BossTick=90..}] at @s run kill @s