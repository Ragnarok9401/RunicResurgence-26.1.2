# Summoning the Nightmare Necrosculker Boss's Core (will run the Nightmare Necrosculker Boss's Tick commands)
execute as @s at @s run summon marker ~ ~1.5 ~ {Tags:["rr.boss","rr.boss.necrosculker","RunicNecrosculkerN","RunicNSNCore"],CustomName:[{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐⭐⭐","color":"#ffd900","italic":false},{"text":" ]","color":"#5387D6","italic":false}]}

bossbar set rr.boss.necrosculker_nightmare visible true
bossbar set rr.boss.necrosculker_nightmare value 3500

execute as @s at @s run fill ~ ~-0.5 ~ ~ ~-0.5 ~ crying_obsidian replace reinforced_deepslate
execute as @s at @s run setblock ~ ~ ~ light[level=6] replace
execute as @s at @s run fill ~ ~1 ~ ~ ~2 ~ barrier replace
execute as @s at @s if entity @n[type=marker,tag=rr.boss,distance=..1.6] run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_far",count:1,"components":{"minecraft:item_model":"rr_recast:boss_item/necrosculker/wrathful_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicWDH:1b}}}},distance=..1]