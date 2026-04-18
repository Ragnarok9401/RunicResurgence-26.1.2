tp @n[tag=rr.boss.ns.weakpoint,distance=..4,type=!item_display] ~ ~-80 ~
execute positioned ~ ~-80 ~ run kill @n[tag=rr.boss.ns.weakpoint,distance=..4,type=!item_display]
scoreboard players set @s rr.system.BossTick 299
tag @s add rr.boss.ns.ticking
playsound minecraft:entity.warden.agitated hostile @a[distance=..40] ~ ~ ~ 0.85 0.75 0

execute align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns.ticking","RunicNSTendril","RunicNSTendrilSet","RunicNSTendrilReached"]}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute align y run summon marker ~-3 ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns.ticking","RunicNSTendril","RunicNSTendrilSet","RunicNSTendrilReached"]}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute align y run summon marker ~3 ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns.ticking","RunicNSTendril","RunicNSTendrilSet","RunicNSTendrilReached"]}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute align y run summon marker ~ ~ ~-3 {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns.ticking","RunicNSTendril","RunicNSTendrilSet","RunicNSTendrilReached"]}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute align y run summon marker ~ ~ ~3 {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns.ticking","RunicNSTendril","RunicNSTendrilSet","RunicNSTendrilReached"]}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0