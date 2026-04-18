# For when an Enchantment is selected for an item
execute as @s[tag=ArenAEABootsSel] at @s run kill @e[type=item_display,tag=ArenAEAIDBoots,distance=..5]
execute as @s[tag=ArenAEABootsSel] at @s run kill @e[type=item_display,tag=ArenAEAIDPageLeft,distance=..5]
execute as @s[tag=ArenAEABootsSel] at @s run kill @e[type=item_display,tag=ArenAEAIDPageRight,distance=..5]
execute as @s[tag=ArenAEABootsSel] at @s run kill @e[type=text_display,tag=ArenAEATDBoots,distance=..5]
execute as @s[tag=ArenAEABootsSel] at @s run kill @e[type=interaction,tag=ArenAEAIMain,distance=..5]
execute as @s at @s run playsound minecraft:block.note_block.chime player @a[distance=..15] ~ ~ ~ 0.9 1.5 0

# Move boots to center of table and place the number representing the enchantment level on the boots above
execute as @s[tag=ArenAEABootsSel] at @s run data merge entity @n[type=item_display,tag=ArenAEAIDMain] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.4f,0f],scale:[-0.8f,0.8f,-0.8f]},interpolation_duration:5}

execute as @s[tag=ArenAEABootsSel,tag=ArenAEABootsSel6] at @s store result score @s aea.math.A run data get entity @e[type=item_display,tag=ArenAEAIDMain,limit=1,sort=nearest,distance=..0.1] item.components."minecraft:enchantments".minecraft:depth_strider

execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=..0}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_0"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=1}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_1"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=2}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_2"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=3}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_3"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=4}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_4"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=5}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_5"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=6}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_6"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=7}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_7"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6,scores={aea.math.A=8..}] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/level_8"}},Tags:[aea.altar.entity,"ArenAEADepthLvl","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}

execute as @s[tag=ArenAEABootsSel6] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/arrow_up"}},Tags:[aea.altar.entity,"ArenAEADepthUp1","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.85f,0.4f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/arrow_double_up"}},Tags:[aea.altar.entity,"ArenAEADepthUp2","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.85f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/arrow_down"}},Tags:[aea.altar.entity,"ArenAEADepthDown1","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.85f,0.4f,0f],scale:[-0.4f,0.4f,-0.4f]}}
execute as @s[tag=ArenAEABootsSel6] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"aea:icon/arrow_double_down"}},Tags:[aea.altar.entity,"ArenAEADepthDown2","ArenAEAIDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.85f,1f,0f],scale:[-0.4f,0.4f,-0.4f]}}

execute as @s[tag=ArenAEABootsSel6] at @s run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEADepthUp1","ArenAEAIMain"]}
execute as @s[tag=ArenAEABootsSel6] at @s run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEADepthUp2","ArenAEAIMain"]}
execute as @s[tag=ArenAEABootsSel6] at @s run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEADepthDown1","ArenAEAIMain"]}
execute as @s[tag=ArenAEABootsSel6] at @s run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEADepthDown2","ArenAEAIMain"]}
execute as @s[tag=ArenAEABootsSel6] at @s run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEADepthConfirm","ArenAEAIMain"]}

execute as @s[tag=ArenAEABootsSel6] at @s run summon text_display ~ ~ ~ {Tags:[aea.altar.entity,"ArenAEADepthLvlText","ArenAEATDMain"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.25f,0f],scale:[0.4f,0.4f,0.4f]},text:[{"text":"Depth Strider\nLevel","color":"white","italic":false}],background:false}

execute as @s at @s run execute as @p[distance=..15] if entity @s[tag=ArenAEAGuideY] run tellraw @s [{"text":"[aea] ","color":"white","italic":false},{"text":"You have selected an enchantment! Click on the arrows to change what level you would like this enchantment to be set to. To confirm, click on your item. A confirmation message will be sent before the enchantment goes through. This will also display what the price of the change will be.\nIf you'd like to turn off these messages, you can use \"/trigger aea.trigger.toggle_altar_guide\".","color":"gold","italic":false}]

execute as @s at @s run tag @n[type=marker,tag=ArenAEADTMain,distance=..5] add ArenAEAEnchInt


execute as @s at @s run scoreboard players set @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.D 0
execute as @s at @s run scoreboard players set @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.E 5
execute as @s at @s run execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] store result score @s aea.math.F run data get entity @n[type=item_display,distance=..1.5,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:depth_strider
execute as @s at @s run execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] store result score @s aea.system.level_base run data get entity @n[type=item_display,distance=..1.5,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:depth_strider


tag @e[type=interaction,limit=1,sort=nearest,tag=ArenAEAICancel,tag=!ArenAEAIBack,distance=..1.5] add ArenAEAIBack
tag @e[type=interaction,limit=1,sort=nearest,tag=ArenAEAICancel,tag=ArenAEAIBack,distance=..1.5] add ArenAEABootsBack
execute as @s[tag=ArenAEABootsSel6] at @s run tag @e[type=interaction,limit=1,sort=nearest,tag=ArenAEAICancel,tag=ArenAEAIBack,distance=..1.5] add ArenAEADepthBack
data merge entity @e[type=text_display,limit=1,sort=nearest,distance=..1.5,tag=ArenAEATCancel,tag=!ArenAEATBack] {text:[{"text":"Back","color":"red","italic":false}]}
tag @e[type=interaction,limit=1,sort=nearest,tag=ArenAEATCancel,tag=!ArenAEATBack,distance=..1.5] add ArenAEATBack
tag @s add ArenAEABootsSelComplete