# Nightmare Necrosculker checks for Restless Crypt Keepers in the structure. If there are 13, kill one and add 100 health up to 3250
execute store result score @s rr.boss.SkeletonCount if entity @e[tag=rr.necrosculker.summoned_skeleton,distance=..22,type=skeleton]
execute if score @s rr.boss.SkeletonCount matches 13.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run particle sculk_soul ~ ~1 ~ 0.25 0.85 0.25 0.01 16 force @a[distance=..40]
execute if score @s rr.boss.SkeletonCount matches 13.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run playsound minecraft:entity.vex.ambient hostile @a[distance=..40] ~ ~1 ~ 1.2 0.6 0
execute if score @s rr.boss.SkeletonCount matches 13.. run kill @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton]
execute if score @s rr.boss.SkeletonCount matches 13.. run scoreboard players add @s rr.system.BossHealth 100
execute if score @s rr.system.BossHealth matches 3251.. run scoreboard players set @s rr.system.BossHealth 3250
# Check Keepers again so that the next one to be targeted has particles
execute at @s store result score @s rr.boss.SkeletonCount if entity @e[tag=rr.necrosculker.summoned_skeleton,distance=..22,type=skeleton]