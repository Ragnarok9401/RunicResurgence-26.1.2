execute if score $config sbhp.config.TickSpeedMode matches 10.. run tellraw @s [{"text":"Swapping Heal Tick Speed to 5 Ticks (4x per second)","color":"green","italic":false}]
execute if score $config sbhp.config.TickSpeedMode matches ..9 run tellraw @s [{"text":"Swapping Heal Tick Speed to 10 Ticks (2x per second)","color":"green","italic":false}]

execute if score $config sbhp.config.TickSpeedMode matches 10.. run tag @s add SBHPSwapTickSpeed5
execute if score $config sbhp.config.TickSpeedMode matches ..9 run tag @s add SBHPSwapTickSpeed10
execute if entity @s[tag=SBHPSwapTickSpeed5] run scoreboard players set $config sbhp.config.TickSpeedMode 5
execute if entity @s[tag=SBHPSwapTickSpeed10] run scoreboard players set $config sbhp.config.TickSpeedMode 10

execute if entity @s[tag=SBHPSwapTickSpeed5] run schedule clear sbhp:technical/10tick
execute if entity @s[tag=SBHPSwapTickSpeed5] run schedule function sbhp:technical/5tick 5t

execute if entity @s[tag=SBHPSwapTickSpeed10] run schedule clear sbhp:technical/5tick
execute if entity @s[tag=SBHPSwapTickSpeed10] run schedule function sbhp:technical/10tick 10t

tag @a remove SBHPSwapTickSpeed10
tag @a remove SBHPSwapTickSpeed5

scoreboard players reset @s sbhp.trigger.SwapTickSpeed
scoreboard players enable @s sbhp.trigger.SwapTickSpeed