tellraw @s [{"text":"[aea] ","color":"gray","italic":false},{"text":"AEA Config was reset by ","color":"red"},{"selector":"@s","color":"aqua"}]

scoreboard players reset @s aea.trigger.reset_config
scoreboard players enable @s aea.trigger.reset_config