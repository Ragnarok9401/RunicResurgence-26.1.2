execute store result score @s rr.system.NSRootHP run data get entity @s Health

execute at @s if score @s rr.math.A matches 1.. if score @s rr.system.NSRootHP < @s rr.math.A run scoreboard players operation @s rr.math.B = @s rr.math.A
execute at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.math.B -= @s rr.system.NSRootHP
execute store result score @s rr.math.A run data get entity @s Health
execute if score @s rr.math.B matches 1.. at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest,distance=..30] rr.system.BossHealth -= @s rr.math.B
execute if score @s rr.math.B matches 1.. at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest,distance=..30,tag=RunicNSLookOther] rr.system.BossDmg += @s rr.math.B
execute if score @s rr.math.B matches 1.. at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~1 ~ 1 0.5 0
execute if score @s rr.math.B matches 1.. at @s run playsound minecraft:block.honey_block.place hostile @a[distance=..50] ~ ~1 ~ 1.2 0.8 0
execute if score @s rr.math.B matches 1.. at @s run particle sculk_soul ~ ~1.5 ~ 1 1 1 0.08 10 force @a[distance=..80]
execute if score @s rr.math.B matches 1.. at @s run execute as @p unless entity @s[predicate=!rr_recast:armor_items/mending_helmet,predicate=!rr_recast:armor_items/mending_chestplate,predicate=!rr_recast:armor_items/mending_leggings,predicate=!rr_recast:armor_items/mending_boots] run summon experience_orb ~ ~1.125 ~ {Value:1}
execute as @s[scores={rr.math.B=1..,rr.system.BossTick=20..210},tag=!rr.boss.necrosculker_dmg_cooldown] at @s run tag @s add rr.boss.necrosculker_dmg_cooldown

execute if score @s rr.math.B matches 1.. at @s run scoreboard players set @s rr.math.B 0