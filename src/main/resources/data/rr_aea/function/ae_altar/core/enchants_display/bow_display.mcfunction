# List of Enchantments for Bows:
#region

## Power VIII
## Punch IV
## Flame III
## Infinity - No longer mutually exclusive with Mending
## Mending - No longer mutually exclusive with Infinity
## Recursion - Arrows that land on the ground create varying patterns of multiple arrows that split off from each other
##     Up to 5 levels, should be *very* expensive, mutually exclusive with Gift of Gravity, Tether, and Awakened Ammunition
##     Rec I - 
##     Rec II - 
##     Rec III - 

## Sunstruck - As this bow's arrows fly, inflict minor Fire damage on targets near the arrow, and catch many targets on fire where the arrow lands
##     Up to 2 levels, should be somewhat expensive unless Moonstruck is present, then make it very expensive
##     SS I - 
##     SS II - 

## Moonstruck - As this bow's arrows fly, inflict minor Cold damage on targets near the arrow, and inflict Slowness on targets near where the arrow lands
##     Up to 2 levels, should be somewhat expensive unless Sunstruck is present, then make it very expensive
##     MS I - 
##     MS II - 

## Gift of Gravity - Makes arrows have no gravity if shot while sneaking (expire after 12 seconds as a tradeoff and to prevent lag)
##     Only 1 level, should be very expensive, mutually exclusive with Tether and Recursion

## Tether - Allows users to ride their own arrow if shot while sneaking (only one arrow may be present per player with this enchantment)
##     Only 1 level, should be very expensive, mutually exclusive with Gift of Gravity and Recursion

#   MAYBE
## Awakened Ammunition - Gives special abilities to Tipped Arrows, granting them significantly better usability over weak and short potion effects
##     Only 1 level, should be very expensive (or only available after a boss), mutually exclusive with Recursion

## Rebound - Makes arrows rebound back toward where they came from upon landing, copying the opposite of their momentum and storing it in a new arrow so it seems like they "bounce" back
##     Up to 2 levels, each level adds 1 bounce to the base arrow, mutually exclusive with Recursion, Tether, and Awakened Ammunition


## FOR FISHING ROD:
## Hookshot - Like Tether but teleports the user to the bobber when reeled in
## Ironcast - Send out bobbers farther per level (up to IV)


## Unbreaking V
## Mending

#endregion

kill @e[tag=ArenAEABowPage2,distance=..15]

# Power
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow1","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:power":5}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow1","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Power","color":"white","italic":false}],background:false}
# Punch
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow2","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:punch":2}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow2","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Punch","color":"white","italic":false}],background:false}
# Flame
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow3","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.1f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:flame":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow3","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,2.4f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Flame","color":"white","italic":false}],background:false}
# Infinity
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow4","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:infinity":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow4","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Infinity","color":"white","italic":false}],background:false}
# Pin
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow5","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:pin":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow5","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Pin","color":"white","italic":false}],background:false}
# Multishot
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow6","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:multishot":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow6","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Multishot","color":"white","italic":false}],background:false}
# Piercing
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow7","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:piercing":3}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow7","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Piercing","color":"white","italic":false}],background:false}
# Gift of Gravity
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow8","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:weightless":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow8","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Weightless","color":"white","italic":false}],background:false}
# Tether
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP1","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow9","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.5f,0f],scale:[-0.75f,0.75f,-0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"rr_aea:tether":1}}}}
summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP1","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow9","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,0.8f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Tether","color":"white","italic":false}],background:false}

# Rebound
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow10"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Rebound","color":"white","italic":false}],background:false}
# Unbreaking
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow11"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.3f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Unbreaking","color":"white","italic":false}],background:false}
# Mending
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDSP2","ArenAEAIDMain","ArenAEAIDBow","ArenAEAIDBow12"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.3f,0f],scale:[0.75f,0.75f,0.75f]},billboard:"vertical",item:{count:1,id:"minecraft:enchanted_book",components:{stored_enchantments:{"minecraft:unbreaking":1}}}}
# summon text_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,Tags:[aea.altar.entity,"ArenAEATDSP2","ArenAEATDMain","ArenAEATDBow","ArenAEATDBow12"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.1f,1.6f,0f],scale:[0.45f,0.45f,0.45f]},billboard:"vertical",text:[{"text":"Mending","color":"white","italic":false}],background:false}
# Awakened Ammunition (tbd)

# Page Change Indicators (arrows pointing left and right, below the user's item)
summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageRight","ArenAEAIDMain","ArenAEAIDMPage1","ArenAEABowPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.5f,0f],scale:[-1f,1f,-1f]},billboard:"vertical",item:{count:1,id:"minecraft:paper",components:{"minecraft:item_model":"aea:icon/arrow_right"}}}
# summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,shadow_radius:0f,width:0.35f,height:0.35f,item_display:"ground",Tags:[aea.altar.entity,"ArenAEAIDPageLeft","ArenAEAIDMain","ArenAEAIDMPage1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0.5f,0f],scale:[1f,1f,1f]},billboard:"vertical",item:{count:1,id:"minecraft:player_head",components:{SkullOwner:"MHF_ArrowLeft"}}}


# Interactions matching to each item/text display created above
summon interaction ^-0.5 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI1","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-1.3 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI2","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-2.1 ^2.1 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI3","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-0.5 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI4","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-1.3 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI5","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-2.1 ^1.3 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI6","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-0.5 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI7","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-1.3 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI8","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}
summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI9","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}

# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI10","ArenAEABowIP2","ArenAEAIMain"]}
# summon interaction ^-2.1 ^0.5 ^ {width:0.2f,height:0.2f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowI11","ArenAEABowIP2","ArenAEAIMain"]}

# summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowIArrowLeft","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage2"]}
summon interaction ^ ^ ^ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEABowI","ArenAEABowIArrowRight","ArenAEABowIP1","ArenAEAIMain","ArenAEABowPage1"]}