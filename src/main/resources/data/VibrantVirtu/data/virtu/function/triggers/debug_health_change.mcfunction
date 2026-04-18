execute as @s if score @s sbhp.trigger.DebugHealthChange = $config sbhp.trigger.DebugHealthChange run tellraw @s {"text":"This value was already set in the config.","color":"yellow","italic":false}
execute as @s unless score @s sbhp.trigger.DebugHealthChange = $config sbhp.trigger.DebugHealthChange run tellraw @s {"text":"Updated Debug Health Modifier value!","color":"green","italic":false}

execute as @s unless score @s sbhp.trigger.DebugHealthChange = $config sbhp.trigger.DebugHealthChange run scoreboard players operation $config sbhp.trigger.DebugHealthChange = @s sbhp.trigger.DebugHealthChange

scoreboard players reset @s sbhp.trigger.DebugHealthChange
scoreboard players enable @s sbhp.trigger.DebugHealthChange