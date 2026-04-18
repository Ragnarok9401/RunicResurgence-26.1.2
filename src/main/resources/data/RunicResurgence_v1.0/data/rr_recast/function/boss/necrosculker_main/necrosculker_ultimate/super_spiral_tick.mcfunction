execute as @s store result score @s rr.math.X run data get entity @s data.rr_recast.tendril_wave.speed 500
scoreboard players add @s rr.math.X 4
execute as @s store result entity @s data.rr_recast.tendril_wave.speed float 0.002 run scoreboard players get @s rr.math.X

execute as @s[scores={rr.system.BossTick=1}] if entity @n[type=marker,tag=rr.boss,distance=..20] run summon item_display ~ ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"RunicNSUTendrilStand2",RunicNSUTendrilOther],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @s[scores={rr.system.BossTick=2..}] at @s run scoreboard players add @s rr.math.index 1
execute as @s[scores={rr.system.BossTick=2..}] at @s run scoreboard players set @s rr.system.BossTick 0
kill @s[scores={rr.math.index=55..}]

$tp @s ^ ^ ^$(speed) ~$(angle) ~