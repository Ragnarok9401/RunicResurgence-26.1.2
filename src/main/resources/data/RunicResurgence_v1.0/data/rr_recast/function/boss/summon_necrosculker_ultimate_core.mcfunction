# Summoning the Necrosculker Boss's Core (will run the Necrosculker Boss's Tick commands)
execute as @s at @s run summon marker ~ ~1.5 ~ {Tags:["rr.boss","rr.boss.necrosculker","RunicNecrosculkerU","RunicNSUCore"],CustomName:[{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐","color":"red","italic":false},{"text":" ]","color":"#5387D6","italic":false}]}

bossbar set rr.boss.necrosculker_ultimate visible true
bossbar set rr.boss.necrosculker_ultimate value 6000

execute as @s at @s run fill ~ ~-0.5 ~ ~ ~-0.5 ~ crying_obsidian replace reinforced_deepslate
execute as @s at @s run setblock ~ ~ ~ light[level=6] replace
execute as @s at @s run fill ~ ~1 ~ ~ ~2 ~ barrier replace
execute as @s at @s if entity @n[type=marker,tag=rr.boss,distance=..1.6] run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_far",count:1,"components":{"minecraft:item_model":"rr_recast:boss_item/necrosculker/evil_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicEDH:1b}}}},distance=..1]