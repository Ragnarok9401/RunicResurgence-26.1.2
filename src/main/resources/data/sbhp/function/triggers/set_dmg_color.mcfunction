execute if score @s sbhp.trigger.DmgColor matches 1 run data modify storage sbhp:config dmg_color set value "black"
execute if score @s sbhp.trigger.DmgColor matches 2 run data modify storage sbhp:config dmg_color set value "white"
execute if score @s sbhp.trigger.DmgColor matches 3 run data modify storage sbhp:config dmg_color set value "red"
execute if score @s sbhp.trigger.DmgColor matches 4 run data modify storage sbhp:config dmg_color set value "gold"
execute if score @s sbhp.trigger.DmgColor matches 5 run data modify storage sbhp:config dmg_color set value "yellow"
execute if score @s sbhp.trigger.DmgColor matches 6 run data modify storage sbhp:config dmg_color set value "green"
execute if score @s sbhp.trigger.DmgColor matches 7 run data modify storage sbhp:config dmg_color set value "aqua"
execute if score @s sbhp.trigger.DmgColor matches 8 run data modify storage sbhp:config dmg_color set value "light_purple"

scoreboard players operation $config sbhp.config.DefaultDmgColor = @s sbhp.trigger.DmgColor

tellraw @s [{"text":"[SBHP] ","color":"gray","italic":false},{"text":"✔ Color updated.","color":"green"}]
scoreboard players reset @s sbhp.trigger.DmgColor
scoreboard players enable @s sbhp.trigger.DmgColor