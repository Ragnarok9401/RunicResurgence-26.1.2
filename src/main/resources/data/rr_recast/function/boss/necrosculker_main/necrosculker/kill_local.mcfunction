execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run setblock ~ ~-2 ~ reinforced_deepslate replace
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..120]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSLaser,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSLaserMTop,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSLaserMBot,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSTendril,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSRootPod,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=RunicNSRootPodZ,distance=..40]
execute as @e[type=marker,tag=rr.boss,distance=..20] at @s run kill @e[tag=rr.boss,distance=..40]