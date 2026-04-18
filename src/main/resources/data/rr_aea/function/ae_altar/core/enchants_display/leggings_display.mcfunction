# List of Enchantments for Leggingss:
#region

## Protection VI
## Fire Protection VI
## Projectile Protection VI
## Blast Protection VI
## Swift Sneak V
## Thorns V

## Unbreaking V
## Mending

### Leggings-Specific
## Height II (expensive) (I = +0.5 Step Height, II = +1 Step Height total)
## Steady III (I = +0.25 Knockback Resistance, II = +0.5 Knockback Resistance, III = +0.75 Knockback Resistance)

#endregion

# just leave this here in case new enchants are added later
kill @e[tag=ArenAEALeggingsPage2,distance=..15]

# Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings1","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings1","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Protection","color":"white","italic":false}],background:false}
# F Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings2","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:fire_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings2","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Fire\nProtection","color":"white","italic":false}],background:false}
# P Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings3","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:projectile_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings3","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Projectile\nProtection","color":"white","italic":false}],background:false}
# B Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings4","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:blast_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings4","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Blast\nProtection","color":"white","italic":false}],background:false}
# Resp
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings5","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:swift_sneak":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings5","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Swift Sneak","color":"white","italic":false}],background:false}
# Thorns
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings6","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:thorns":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings6","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Thorns","color":"white","italic":false}],background:false}
# Unbreaking
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings7","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings7","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Unbreaking","color":"white","italic":false}],background:false}
# Mending
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings8","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:mending":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings8","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Mending","color":"white","italic":false}],background:false}

# Rebound
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Rebound","color":"white","italic":false}],background:false}
# Unbreaking
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Unbreaking","color":"white","italic":false}],background:false}
# Mending
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDLeggings","ArenAEAIDLeggings12"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDLeggings","ArenAEATDLeggings12"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Mending","color":"white","italic":false}],background:false}
# Awakened Ammunition (tbd)

# Page Change Indicators (arrows pointing left and right, below the user's item)
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageRight","ArenAEAIDMain","ArenAEAIDMPage1","ArenAEALeggingsPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.5f,0f],scale:[-1f,1f,-1f]},billboard:"vertical",item:{count:1,id:"minecraft:paper",components:{"minecraft:item_model":"aea:icon/arrow_right"}}}
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageLeft","ArenAEAIDMain","ArenAEAIDMPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0.5f,0f],scale:[1f,1f,1f]},billboard:"vertical",item:{count:1,id:"minecraft:player_head",components:{SkullOwner:"MHF_ArrowLeft"}}}


# Interactions matching to each item/text display created above
summon interaction ^-0.5 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI1","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-1.3 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI2","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-2.1 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI3","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-0.5 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI4","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-1.3 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI5","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-2.1 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI6","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-0.5 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI7","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}
summon interaction ^-1.3 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI8","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}

# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI10","ArenAEALeggingsIP2","ArenAEAIMain"]}
# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsI11","ArenAEALeggingsIP2","ArenAEAIMain"]}

# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsIArrowLeft","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage2"]}
# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEALeggingsI","ArenAEALeggingsIArrowRight","ArenAEALeggingsIP1","ArenAEAIMain","ArenAEALeggingsPage1"]}