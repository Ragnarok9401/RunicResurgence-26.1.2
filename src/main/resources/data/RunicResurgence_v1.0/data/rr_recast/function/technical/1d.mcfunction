# Commands below this line should run per day
tellraw @a {"text":"A new day","color":"white","italic":false}

execute in overworld as @r[limit=1,predicate=rr_recast:event/meteor/meteor_chance] at @s run function rr_recast:event/meteor/summon_meteor

execute as @a[tag=!rr.cutscene.initialized] run scoreboard players set @s rr.system.cutscene_index 1
execute as @a[tag=!rr.cutscene.initialized] run tag @s add rr.cutscene.initialized
execute as @a[tag=rr.cutscene.initialized] at @s run function rr_recast:cutscene/daily

# Initialize players for update tracking, so new updates can be shown to them as they release
execute as @a[tag=!rr.init_updates] at @s run scoreboard players operation @s rr.system.UpdateNumber = $global rr.system.UpdateNumber
execute as @a[tag=!rr.init_updates] at @s run scoreboard players remove @s rr.system.UpdateNumber 1
execute as @a[tag=!rr.init_updates] at @s run tag @s add rr.init_updates


execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.1d] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.1d
schedule function rr_recast:technical/1d 1d replace