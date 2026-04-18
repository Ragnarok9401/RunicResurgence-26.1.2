tellraw @s [{"text":"[Healthscore] ","color":"gray","italic":false},{"text":"Healthscore Config was reset by ","color":"red"},{"selector":"@s","color":"aqua"}]

scoreboard players set $config sbhp.config.BaseDmgMod 110
scoreboard players set $config sbhp.config.DmgWait 5
scoreboard players set $config sbhp.config.HealTimeMax 20
scoreboard players set $config sbhp.config.RespawnHealth 80
scoreboard players set $config sbhp.config.DmgIndOn 1
scoreboard players set $config sbhp.config.DefaultDmgColor 3
data modify storage sbhp:config dmg_color set value "red"


scoreboard players reset @s sbhp.trigger.ResetConfig
scoreboard players enable @s sbhp.trigger.ResetConfig