execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run setblock ~ ~-2 ~ reinforced_deepslate replace
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..120]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSELaser,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSELaserMTop,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSELaserMBot,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSETendril,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSERootPod,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSERootPodZ,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=rr.boss,distance=..40]