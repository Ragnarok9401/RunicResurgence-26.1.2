# List of Enchantments for Chestplates:
#region

## Protection VI
## Fire Protection VI
## Projectile Protection VI
## Blast Protection VI
## Thorns V

## Unbreaking V
## Mending

### Chestplate-Specific
## Healthy IV (expensive) (I = +15, II = +25, III = +25, IV = +35, compounding)

#endregion

# just leave this here in case new enchants are added later
kill @e[tag=ArenAEAChestplatePage2,distance=..15]

# Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate1","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate1","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Protection","color":"white","italic":false}],background:false}
# F Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate2","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:fire_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate2","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Fire\nProtection","color":"white","italic":false}],background:false}
# P Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate3","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:projectile_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate3","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Projectile\nProtection","color":"white","italic":false}],background:false}
# B Prot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate4","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:blast_protection":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate4","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Blast\nProtection","color":"white","italic":false}],background:false}
# Thorns
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate5","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:thorns":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate5","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Thorns","color":"white","italic":false}],background:false}
# Unbreaking
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate6","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate6","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Unbreaking","color":"white","italic":false}],background:false}
# Mending
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate7","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:mending":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate7","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Mending","color":"white","italic":false}],background:false}
# Enlarge
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate8","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:enlarge":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate8","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Enlarge","color":"white","italic":false}],background:false}
# Shrink
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDChestplate","ArenAEAIDChestplate9","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:shrink":4}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDChestplate","ArenAEATDChestplate9","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Shrink","color":"white","italic":false}],background:false}

# Page Change Indicators (arrows pointing left and right, below the user's item)
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageRight","ArenAEAIDMain","ArenAEAIDMPage1","ArenAEAChestplatePage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.5f,0f],scale:[-1f,1f,-1f]},billboard:"vertical",item:{count:1,id:"minecraft:paper",components:{"minecraft:item_model":"aea:icon/arrow_right"}}}
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageLeft","ArenAEAIDMain","ArenAEAIDMPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0.5f,0f],scale:[1f,1f,1f]},billboard:"vertical",item:{count:1,id:"minecraft:player_head",components:{SkullOwner:"MHF_ArrowLeft"}}}


# Interactions matching to each item/text display created above
summon interaction ^-0.5 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI1","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-1.3 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI2","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-2.1 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI3","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-0.5 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI4","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-1.3 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI5","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-2.1 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI6","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-0.5 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI7","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-2.1 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI8","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}
summon interaction ^-0.5 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI9","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}

# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI10","ArenAEAChestplateIP2","ArenAEAIMain"]}
# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateI11","ArenAEAChestplateIP2","ArenAEAIMain"]}

# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateIArrowLeft","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage2"]}
# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEAChestplateI","ArenAEAChestplateIArrowRight","ArenAEAChestplateIP1","ArenAEAIMain","ArenAEAChestplatePage1"]}