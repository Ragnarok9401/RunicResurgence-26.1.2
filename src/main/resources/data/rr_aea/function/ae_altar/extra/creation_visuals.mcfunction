execute as @s if block ~ ~-1 ~ beacon if block ~ ~-2 ~ enchanting_table if block ~1.35 ~-1.5 ~ amethyst_cluster[facing=west] if block ~-1.35 ~-1.5 ~ amethyst_cluster[facing=east] if block ~ ~-1.5 ~1.35 amethyst_cluster[facing=north] if block ~ ~-1.5 ~-1.35 amethyst_cluster[facing=south] if block ~2 ~-2 ~ diamond_block if block ~1 ~-2 ~1 diamond_block if block ~ ~-2 ~2 diamond_block if block ~-1 ~-2 ~1 diamond_block if block ~-2 ~-2 ~ diamond_block if block ~-1 ~-2 ~-1 diamond_block if block ~ ~-2 ~-2 diamond_block if block ~1 ~-2 ~-1 diamond_block if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{count:1,id:"minecraft:dragon_breath"}},distance=..1.5] run tag @s add ArenBlocksChecked
execute as @s[tag=!ArenBlocksChecked] run playsound minecraft:block.beacon.deactivate player @a[distance=..40] ~ ~ ~ 1.3 0.6 0.1
execute as @s[tag=!ArenBlocksChecked] run playsound minecraft:block.enchantment_table.use player @a[distance=..40] ~ ~ ~ 1.45 0.6 0.1
execute as @s[tag=!ArenBlocksChecked] run kill @s

execute as @s[tag=ArenBlocksChecked,scores={aea.math.A=1..}] at @s run particle explosion ~ ~ ~ 1.5 1.125 1.5 0.1 2 force @a[distance=..50]
execute as @s[tag=ArenBlocksChecked,scores={aea.math.A=1..}] at @s run particle enchant ~ ~ ~ 0 0 0 1.2 2 force @a[distance=..50]
execute as @s[tag=ArenBlocksChecked,scores={aea.math.A=1..}] at @s run playsound minecraft:entity.elder_guardian.curse block @a[distance=..40] ~ ~ ~ 0.1 1.5 0

execute as @s[tag=ArenBlocksChecked,scores={aea.math.A=40..}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..50]

execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=..15,tag=ArenAEAltar] positioned ~ ~-2 ~ run summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:1f,height:1f,item_display:"head",Tags:[aea.altar.entity,"ArenAEAltar","aeaSetup"],CustomName:'{"text":"Arcane Enchanting Altar","color":"gold","italic":false}',item:{id:"minecraft:gold_nugget",count:1,components:{custom_name:'{"text":"Arcane Enchanting Altar","color":"gold","italic":false}',"minecraft:item_model":"aea:block/enchanting_altar","minecraft:custom_data":{ArenAEAltar:1b}}}}
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dragon_breath",count:1}}]
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run fill ~-2 ~-2 ~ ~2 ~-2 ~ air replace amethyst_cluster
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run fill ~ ~-2 ~-2 ~ ~-2 ~2 air replace amethyst_cluster
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run fill ~-2 ~-2 ~ ~2 ~-2 ~ air
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run fill ~ ~-2 ~-2 ~ ~-2 ~2 air
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 air
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run setblock ~ ~-1 ~ air
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run setblock ~ ~-2 ~ barrier
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run summon text_display ~ ~-2.03125 ~ {NoGravity:1b,Silent:1b,view_range:0.5f,shadow_radius:0f,billboard:"vertical",text_opacity:200,background:false,alignment:"center",Tags:[aea.altar.entity,"ArenAEABaseText"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[0.8f,0.8f,0.8f]},text:[{"text":"To begin, click on the\ntable with a\n","color":"aqua","italic":false},{"text":"Tool, Weapon, or Armor","color":"gold","italic":false}],brightness:{block:15,sky:15}}
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s unless entity @e[type=item_display,distance=3.5..15,tag=ArenAEAltar] run summon interaction ~ ~-1.03125 ~ {NoGravity:1b,Silent:1b,width:0.8f,height:0.1f,response:0b,Tags:[aea.altar.entity,"ArenAEATable","ArenAEAReady"]}
execute as @s[type=marker,tag=ArenAEACreate,scores={aea.math.A=50}] at @s run kill @s

tag @s remove ArenBlocksChecked