# Display blue fire particles as soon as the player sneaks while holding a Tablet
particle soul_fire_flame ~ ~0.25 ~ 0.2 0.2 0.2 0.03 8 force @a[distance=..50]
playsound minecraft:block.trial_spawner.ominous_activate player @a[distance=..30] ~ ~1 ~ 0.9 1.5 0.35
playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~1 ~ 0.2 2 0


# Summon Interactions in front of the Marker with ID Tags
#region
## Int 1
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.1,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.1,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":1},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 0.675 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 2
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.2,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.2,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":2},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 0.75125 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 3
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.3,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.3,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":3},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 0.85 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 4
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.4,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.4,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":4},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 0.9 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 5
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.5,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.5,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":5},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 1 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 6
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.6,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.6,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":6},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 1.125 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 7
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.7,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.7,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":7},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 1.2875 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 8
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.8,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.8,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":8},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 1.35 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

## Int 9
execute as @s unless entity @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.9,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.2f,height:0.2f,Tags:[rr.block.scriptscrying_table.interaction.9,rr.block.scriptscrying_table.interaction.minigame,rr.block.scriptscrying_table.interaction,rr.block.scriptscrying_table.interaction.setup,rr.block.scriptscrying_table.interaction.ring],data:{ring_num:{"num":9},fx:{sound:"minecraft:block.note_block.pling player @a[distance=..15] ~ ~0.1 ~ 0.7 1.50625 0",particle:"small_flame ~ ~0.1 ~ 0 0 0 0.01 1"}}}

#endregion


# For each Interaction summoned by the Scriptscrying Table, set Block ID score to the block's Block ID which summoned it and move it
execute as @e[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup] at @s run scoreboard players operation @s rr.block.id = @n[distance=..0.01,tag=rr.block.scriptscrying_table.main] rr.block.id

## Teleporting
### Int 1
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.1] run tp @s ^ ^2.275 ^ ~ ~

### Int 2
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.2] run tp @s ^0.548 ^2.048 ^ ~ ~

### Int 3
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.3] run tp @s ^0.775 ^1.5 ^ ~ ~

### Int 4
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.4] run tp @s ^0.548 ^0.952 ^ ~ ~

### Int 5
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.5] run tp @s ^ ^0.725 ^ ~ ~

### Int 6
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.6] run tp @s ^-0.548 ^0.952 ^ ~ ~

### Int 7
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.7] run tp @s ^-0.775 ^1.5 ^ ~ ~

### Int 8
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.8] run tp @s ^-0.548 ^2.048 ^ ~ ~

### Int 9
execute as @n[distance=..0.01,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.9] run tp @s ^ ^1.5 ^ ~ ~

##endregion
#endregion

# Make Interactions summon Item Displays which will detail numbered positions and in what order they are activated in
# Indicator 1
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.1,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.9f,0.9f,0.9f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 1"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_1"}}}

# Indicator 2
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.2,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.15f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 2"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_2"}}}

# Indicator 3
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.3,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.9f,0.9f,0.9f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 3"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_3"}}}

# Indicator 4
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.4,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.4"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 4"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_4"}}}

# Indicator 5
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.5,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.5"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.9f,0.9f,0.9f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 5"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_5"}}}

# Indicator 6
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.6,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.6"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 6"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_6"}}}

# Indicator 7
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.7,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.7"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.9f,0.9f,0.9f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 7"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_7"}}}

# Indicator 8
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.8,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.8"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 8"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_8"}}}

# Indicator 9
execute as @e[type=interaction,tag=rr.block.scriptscrying_table.interaction.setup,tag=rr.block.scriptscrying_table.interaction.9,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["rr.block.scriptscrying_table.indicator","rr.block.scriptscrying_table.indicator.9"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 9"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},item_model:"rr_recast:runic_ring/unselected/runic_ring_unselected_9"}}}

# Rotate Ring Item Displays to match base block rotation
execute as @e[distance=..4,type=interaction,tag=rr.block.scriptscrying_table.interaction.setup] at @s run data modify entity @n[distance=..0.01,tag=rr.block.scriptscrying_table.indicator,type=item_display] Rotation set from entity @n[distance=..4,tag=rr.block.scriptscrying_table.main] Rotation


# Create a Text Display in front of the block to display guesses
execute positioned ^ ^ ^0.525 run summon text_display ~ ~ ~ {Tags:["rr.block.scriptscrying_table.text_display.minigame","rr.block.scriptscrying_table.text_display"],alignment:"center",background:402653184,billboard:"fixed",brightness:{block:12,sky:12},text:[[{"text":"Guesses:\n","color":"aqua","italic":false}],[{"text":"1: ?????","italic":false}],[{"text":" | ","italic":false}],[{"text":"2: ?????","italic":false}],[{"text":"\n"}],[{"text":"3: ?????","italic":false}],[{"text":" | ","italic":false}],[{"text":"4: ?????","italic":false}],[{"text":"\n"}],[{"text":"5: ?????","italic":false}],[{"text":" | ","italic":false}],[{"text":"6: ?????","italic":false}],[{"text":"\n"}],[{"text":"Attempts: ","italic":false}],[{"text":"6","italic":false}],[{"text":"\n"}],[{"text":"Click the Script\n","color":"aqua","italic":false}],[{"text":"to return it\n","color":"aqua","italic":false}]],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,-0.55,0],scale:[0.5f,0.5f,0.5f]}}
data modify entity @n[distance=..0.55,tag=rr.block.scriptscrying_table.text_display.minigame,type=text_display] Rotation set from entity @s Rotation


# Add a rr.spell.tablet_active tag to players who use the Tablet and remove the rr.block.scriptscrying_table.interaction.setup tag from interactions
tag @e[tag=rr.block.scriptscrying_table.interaction.setup] remove rr.block.scriptscrying_table.interaction.setup