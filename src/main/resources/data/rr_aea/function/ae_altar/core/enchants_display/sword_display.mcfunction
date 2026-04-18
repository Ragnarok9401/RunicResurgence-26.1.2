# List of Enchantments for Swords:
#region

## Sharpness VIII
## Fire Aspect IV
## Sweeping Edge V
## Knockback IV
## Smite VIII
## Bane of Arthropods VIII
## Looting V
## Echo - Chance to create a repeating set of slashes upon hit (does not take on Fire Aspect or Chaos Aspect)
##     Up to 3 levels, with an 8% chance to proc at all levels
##     Rec I - Lasts 3 seconds, 1.5 block radius, 1 hit/sec
##     Rec II - Lasts 3.5 seconds, 1.75 block radius, 1.25 hit/sec
##     Rec III - Lasts 4 seconds, 2 block radius, 1.5 hit/sec

## Fervor - As you deal damage, increase Speed and Haste
##     Up to 2 levels
##     Fer I - Up to Speed / Haste 2 at 300 Damage and above, max 400 Damage stored, depletes at a rate of 0.5/tick
##     Fer II - Up to Speed / Haste 2 at 250 Damage, then Speed / Haste 3 at 375 Damage, then Speed / Haste 4 at 500 Damage and above, max 650 Damage stored, depletes at a rate of 0.5/tick

## Unbreaking V
## Mending

#endregion

kill @e[tag=ArenAEASwordPage2,distance=..15]

# Sharpness
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword1","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:sharpness":5}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword1","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Sharpness","color":"white","italic":false}],background:false}
# Smite
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword2","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:smite":5}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword2","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Smite","color":"white","italic":false}],background:false}
# Bane of Arthropods
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword3","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:bane_of_arthropods":5}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword3","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Bane of Arthropods","color":"white","italic":false}],background:false}
# Knockback
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword4","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:knockback":2}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword4","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Knockback","color":"white","italic":false}],background:false}
# Fire Aspect
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword5","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:fire_aspect":2}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword5","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Fire Aspect","color":"white","italic":false}],background:false}
# Looting
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword6","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:looting":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword6","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Looting","color":"white","italic":false}],background:false}
# Sweeping Edge
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword7","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:sweeping_edge":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword7","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Sweeping Edge","color":"white","italic":false}],background:false}
# Echo
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword8","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:echo":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword8","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Echo","color":"white","italic":false}],background:false}
# Fervor
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword9","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:fervor":2}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword9","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Fervor","color":"white","italic":false}],background:false}

# Unbreaking
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.5f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Unbreaking","color":"white","italic":false}],background:false}
# Mending
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDSword","ArenAEAIDSword11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.5f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDSword","ArenAEATDSword11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Mending","color":"white","italic":false}],background:false}

# Page Change Indicators (arrows pointing left and right, below the user's item)
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageRight","ArenAEAIDMain","ArenAEAIDMPage1","ArenAEASwordPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.5f,0f],scale:[-1f,1f,-1f]},billboard:"vertical",item:{count:1,id:"minecraft:paper",components:{"minecraft:item_model":"aea:icon/arrow_right"}}}
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageLeft","ArenAEAIDMain","ArenAEAIDMPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0.5f,0f],scale:[1f,1f,1f]},billboard:"vertical",item:{count:1,id:"minecraft:player_head",components:{SkullOwner:"MHF_ArrowLeft"}}}


# Interactions matching to each item/text display created above
summon interaction ^0.5 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI1","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^1.3 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI2","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^2.1 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI3","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^0.5 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI4","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^1.3 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI5","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^2.1 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI6","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^0.5 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI7","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^1.3 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI8","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}
summon interaction ^2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI9","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}

# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI10","ArenAEASwordIP2","ArenAEAIMain"]}
# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordI11","ArenAEASwordIP2","ArenAEAIMain"]}

# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordIArrowLeft","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage2"]}
summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEASwordI","ArenAEASwordIArrowRight","ArenAEASwordIP1","ArenAEAIMain","ArenAEASwordPage1"]}