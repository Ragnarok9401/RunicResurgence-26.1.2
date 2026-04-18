# Damage players hit by the large Sculk Lasers
execute as @e[type=marker,tag=rr.boss,tag=RunicNSNCore] at @s run scoreboard players remove @e[scores={rr.system.NSLaserCD=1..},distance=..40] rr.system.NSLaserCD 1
execute as @e[type=marker,tag=rr.boss,tag=RunicNSNCore] at @s run execute as @e[tag=RunicLaserHit,scores={rr.system.NSLaserCD=0},distance=..40] at @s run damage @s 7 rr_recast:magic_chaos by @e[limit=1,sort=nearest,type=marker,distance=..30] from @e[tag=rr.boss,tag=RunicNSNCore,limit=1,sort=nearest,distance=..40]
execute as @e[type=marker,tag=rr.boss,tag=RunicNSNCore] at @s run execute as @e[distance=..40,tag=RunicLaserHit,scores={rr.system.NSLaserCD=0}] at @s run scoreboard players set @s rr.system.NSLaserCD 4
execute as @e[type=marker,tag=rr.boss,tag=RunicNSNCore] at @s run execute as @e[distance=..40,tag=RunicLaserHit,scores={rr.system.NSLaserCD=4}] at @s run tag @s remove RunicLaserHit

execute as @e[type=marker,tag=rr.boss,tag=RunicNSUCore] at @s run scoreboard players remove @e[scores={rr.system.NSLaserCD=1..},distance=..40] rr.system.NSLaserCD 1
execute as @e[type=marker,tag=rr.boss,tag=RunicNSUCore] at @s run execute as @e[tag=RunicLaserHit,scores={rr.system.NSLaserCD=0},distance=..40] at @s run damage @s 10 rr_recast:magic_chaos by @e[limit=1,sort=nearest,type=marker,distance=..30] from @e[tag=rr.boss,tag=RunicNSUCore,limit=1,sort=nearest,distance=..40]
execute as @e[type=marker,tag=rr.boss,tag=RunicNSUCore] at @s run execute as @e[distance=..40,tag=RunicLaserHit,scores={rr.system.NSLaserCD=0}] at @s run scoreboard players set @s rr.system.NSLaserCD 4
execute as @e[type=marker,tag=rr.boss,tag=RunicNSUCore] at @s run execute as @e[distance=..40,tag=RunicLaserHit,scores={rr.system.NSLaserCD=4}] at @s run tag @s remove RunicLaserHit

execute as @e[type=interaction,tag=rr.runic_table.preview.interaction] at @s run particle enchant ~ ~1.25 ~ 0 0 0 0.25 1 force @a[distance=..12]

execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.2t] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.2t
schedule function rr_recast:technical/2t 2t replace