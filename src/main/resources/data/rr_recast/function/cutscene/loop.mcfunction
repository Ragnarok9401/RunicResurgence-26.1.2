execute as @a[tag=rr.player.in_cutscene] at @s run effect give @s blindness 2 0 true
execute as @a[tag=rr.player.in_cutscene] at @s run effect give @s invisibility 2 99 true

execute as @a[tag=rr.cutscene.intro,tag=rr.player.in_cutscene] at @s unless score @s rr.system.cutscene_index matches 30.. run function rr_recast:cutscene/intro
execute as @a[tag=rr.cutscene.intro,tag=rr.player.in_cutscene] at @s if score @s rr.system.cutscene_index matches 30.. run scoreboard players set @s rr.system.cutscene_index -1
execute as @a[tag=rr.cutscene.intro,tag=rr.player.in_cutscene] at @s if score @s rr.system.cutscene_index matches -1 run tag @s remove rr.player.in_cutscene
execute as @a[tag=rr.cutscene.intro,tag=!rr.player.in_cutscene] at @s run tag @s remove rr.cutscene.intro


execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.cutscene_loop] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.cutscene_loop
schedule function rr_recast:cutscene/loop 1s replace