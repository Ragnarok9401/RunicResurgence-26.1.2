execute as @s at @s positioned ~ ~1 ~ run function rr_aea:ae_altar/core/enchants_display/sword_display_p2

execute as @n[type=marker,tag=ArenAEASwordMarker,tag=ArenAEASwordSel,distance=..5] at @s run summon marker ~ ~ ~ {Tags:[aea.altar.entity,"ArenAEADirTrack","ArenAEADTMain","ArenAEASwordMarker","ArenAEASwordMP1"]}
execute as @n[type=marker,tag=ArenAEASwordMarker,tag=ArenAEASwordSel,distance=..5] at @s run kill @s

execute as @s at @s run summon interaction ~ ~0.875 ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,width:0.25f,height:0.25f,Tags:[aea.altar.entity,"ArenAEAICancel"]}
execute as @s at @s run data merge entity @e[type=item_display,tag=ArenAEAIDMain,limit=1,sort=nearest] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,1.3f,0f],scale:[-0.8f,0.8f,-0.8f]}}
execute as @e[type=text_display,limit=1,sort=nearest,distance=..5,tag=ArenAEATCancel,tag=ArenAEATBack] at @s run data merge entity @s {text:[{"text":"Cancel","color":"red","italic":false}]}

execute as @s at @s run playsound minecraft:block.note_block.chime player @a[distance=..15] ~ ~ ~ 0.9 1 0

execute as @s at @s run tag @e[type=text_display,limit=1,sort=nearest,tag=ArenAEATCancel,tag=ArenAEATBack,distance=..1.5] remove ArenAEATBack
execute as @s at @s run kill @e[type=text_display,tag=ArenAEAMaulLvlText,distance=..5]
execute as @s at @s run kill @e[type=item_display,tag=ArenAEAMaulLvl,distance=..5]
execute as @s at @s run kill @e[type=item_display,tag=ArenAEAMaulUp1,distance=..5]
execute as @s at @s run kill @e[type=item_display,tag=ArenAEAMaulUp2,distance=..5]
execute as @s at @s run kill @e[type=item_display,tag=ArenAEAMaulDown1,distance=..5]
execute as @s at @s run kill @e[type=item_display,tag=ArenAEAMaulDown2,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulUp1,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulUp2,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulDown1,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulDown2,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulConfirm,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAMaulConfirm2,distance=..5]
execute as @s at @s run kill @e[type=interaction,tag=ArenAEAICancel,tag=ArenAEAIBack,distance=..5]