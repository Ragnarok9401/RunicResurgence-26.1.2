# Summoning the Sunsong Sycophant Boss's Core (will run the Sycophant Boss's Tick commands)
execute as @s at @s run summon item_frame ~ ~ ~ {Facing:1b,Invisible:true,Invulnerable:true,Tags:["RunicSycCoreSummon"]}
execute as @e[type=item_frame,tag=RunicNSCoreSummon] at @s run summon marker ~ ~1.46875 ~ {Tags:["rr.boss","rr.sycophant","RunicSycophant","RunicSycCore"],CustomName:'{"text": "Sunsong Sycophant","color":"#5387D6","italic":false}'}
execute as @e[type=item_frame,tag=RunicNSCoreSummon] at @s run kill @s

bossbar set rr.boss.necrosculker visible true
bossbar set rr.boss.necrosculker value 1100

execute as @s at @s run fill ~ ~-0.8 ~ ~ ~-0.8 ~ crying_obsidian replace reinforced_deepslate
execute as @s at @s run setblock ~ ~ ~ light[level=6] replace
execute as @s at @s run setblock ~ ~-2 ~ barrier replace
execute as @s at @s run setblock ~ ~1 ~ barrier replace
execute as @s at @s run kill @e[type=item_frame,limit=1,sort=nearest,tag=RunicNSSummon,distance=..0.8]
execute as @s at @s run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sculk_catalyst",Count:1b}}]
execute as @s at @s run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:echo_shard",Count:4b,tag:{CustomModelData:12339}}}]
execute as @s at @s run kill @s