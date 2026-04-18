scoreboard players set @s rr.boss.SkeletonCount 0

execute as @s[tag=RunicNSCore] at @s run function rr_recast:boss/necrosculker_main/check_skeletons_ns
execute as @s[tag=RunicNSECore] at @s run function rr_recast:boss/necrosculker_main/check_skeletons_elite
execute as @s[tag=RunicNSNCore] at @s run function rr_recast:boss/necrosculker_main/check_skeletons_nightmare
execute as @s[tag=RunicNSUCore] at @s run function rr_recast:boss/necrosculker_main/check_skeletons_ultimate