execute if score $config sbhp.config.DmgIndOn matches 1 run tellraw @s [{"text":"Damage Indicator will no longer display.","color":"red","italic":false}]
execute if score $config sbhp.config.DmgIndOn matches 0 run tellraw @s [{"text":"Damage Indicator will now display.","color":"green","italic":false}]

execute if score $config sbhp.config.DmgIndOn matches 1 run tag @s add SBHPDmgIndOff
execute if score $config sbhp.config.DmgIndOn matches 0 run tag @s add SBHPDmgIndOn
execute if entity @s[tag=SBHPDmgIndOff] run scoreboard players set $config sbhp.config.DmgIndOn 0
execute if entity @s[tag=SBHPDmgIndOn] run scoreboard players set $config sbhp.config.DmgIndOn 1

tag @a remove SBHPDmgIndOff
tag @a remove SBHPDmgIndOn

scoreboard players reset @s sbhp.trigger.ToggleDmgIndicator
scoreboard players enable @s sbhp.trigger.ToggleDmgIndicator