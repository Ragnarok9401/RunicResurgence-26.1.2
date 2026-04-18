# Summoning the Necrosculker Boss's Core (will run the Necrosculker Boss's Tick commands)
execute as @s at @s run summon marker ~ ~1.5 ~ {Tags:["rr.boss","rr.boss.necrosculker","RunicNecrosculker","RunicNSCore"],CustomName:[{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐","color":"yellow","italic":false},{"text":" ]","color":"#5387D6","italic":false}]}

# Probably change this to a bossbar using a custom Wither, so that multiple bosses can be summoned at once without issues
bossbar set rr.boss.necrosculker visible true
bossbar set rr.boss.necrosculker value 1000

execute as @s at @s run fill ~ ~-0.5 ~ ~ ~-0.5 ~ crying_obsidian replace reinforced_deepslate
execute as @s at @s run setblock ~ ~ ~ light[level=6] replace
execute as @s at @s run fill ~ ~1 ~ ~ ~2 ~ barrier replace
execute as @s at @s if entity @n[type=marker,tag=rr.boss,distance=..1.6] run kill @n[type=item,nbt={Item:{id:"minecraft:music_disc_far",count:1,"components":{"minecraft:item_model":"rr_recast:boss_item/necrosculker/suspicious_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicSDH:1b}}}},distance=..1]