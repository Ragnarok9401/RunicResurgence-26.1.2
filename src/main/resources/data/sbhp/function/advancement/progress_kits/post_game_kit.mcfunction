# Kit for (vanilla) Post Game
# (Enchanted Tenebrium Tools and Armor, perfect Overworld, Nether, and End progress, pure Advancement hunting)
# (Also this is getting more into Runic Resurgence content)

give @s netherite_sword[item_name={"translate": "item.rr_recast.tenebrium_falchion","fallback": "Tenebrium Falchion","color": "#3367B6","italic": false},custom_data={rr.sharpness_checked:0,rr.sharpness:0,rr.tenebrium_falchion:1b},item_model="rr_recast:equipment/weapon/falchion/tenebrium_falchion",attribute_modifiers=[{"type":"attack_damage","id":"rr_recast:tenebrium_falchion.attack_damage_base","amount":14,"operation":"add_value","slot":"mainhand","display": {"type": "override","value": {"text": " ","extra": [{"text": "14","extra": [{"text": " ","extra": [{"translate": "attribute.name.attack_damage","fallback": "Attack Damage","italic": false}],"italic": false}],"italic": false}],"color": "dark_green","italic": false}}},{"type": "minecraft:attack_speed","id": "rr_recast:tenebrium_falchion.attack_speed_base","amount": -2.6,"operation": "add_value","slot": "mainhand","display": {"type": "override","value": {"text": " ","extra": [{"text": "1.4","extra": [{"text": " ","extra": [{"translate": "attribute.name.attack_speed","fallback": "Attack Speed","italic": false}],"italic": false}],"italic": false}],"color": "dark_green","italic": false}}}],unbreakable={},damage_resistant={types:"#minecraft:is_fire"},enchantments={sharpness:8,looting:5,sweeping_edge:5,"rr_aea:echo":3,"rr_aea:fervor":2,"rr_aea:maul":8}]

give @p netherite_pickaxe[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 7 Attack Damage"}}},{id:"attack_speed",type:"attack_speed",amount:-2.8,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 1.2 Attack Speed"}}},{id:"block_interaction_range",type:"block_interaction_range",amount:0.5,operation:"add_value",slot:"mainhand"}],max_damage=2642,custom_data={rr.item:1b,rr.pickaxe:1b},enchantable={value:20},item_model="rr_recast:equipment/tool/tenebrium_pickaxe",item_name={"color":"#3367B6","italic":false,"text":"Tenebrium Pickaxe"},tool={can_destroy_blocks_in_creative:true,rules:[{speed:12,correct_for_drops:true,blocks:"#minecraft:mineable/pickaxe"}]},enchantments={efficiency:8,fortune:5,unbreaking:5,mending:1}] 1

give @p netherite_axe[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:12,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 12 Attack Damage"}}},{id:"attack_speed",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 1 Attack Speed"}}},{id:"block_interaction_range",type:"block_interaction_range",amount:0.5,operation:"add_value",slot:"mainhand"}],max_damage=2642,custom_data={rr.item:1b,rr.axe:1b},enchantable={value:20},item_model="rr_recast:equipment/tool/tenebrium_axe",item_name={"color":"#3367B6","italic":false,"text":"Tenebrium Axe"},tool={can_destroy_blocks_in_creative:true,rules:[{speed:12,correct_for_drops:true,blocks:"#minecraft:mineable/axe"}]},weapon={disable_blocking_for_seconds:1,item_damage_per_attack:1},enchantments={efficiency:8,silk_touch:1,unbreaking:5,mending:1}] 1

give @p netherite_shovel[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 7 Attack Damage"}}},{id:"attack_speed",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand",display:{type:"override",value:{"color":"dark_green","italic":false,"text":" 1 Attack Speed"}}},{id:"block_interaction_range",type:"block_interaction_range",amount:0.5,operation:"add_value",slot:"mainhand"}],max_damage=2642,custom_data={rr.item:1b,rr.shovel:1b},enchantable={value:20},item_model="rr_recast:equipment/tool/tenebrium_shovel",item_name={"color":"#3367B6","italic":false,"text":"Tenebrium Shovel"},tool={can_destroy_blocks_in_creative:true,rules:[{speed:12,correct_for_drops:true,blocks:"#minecraft:mineable/shovel"}]},enchantments={efficiency:8,silk_touch:1,unbreaking:5,mending:1}] 1

give @s netherite_helmet[item_name=[{"translate":"item.rr_recast.tenebrium_helmet","fallback":"Tenebrium Helm","color":"#5387D6","italic":false}],attribute_modifiers=[{"id":"rr.armor.helmet",type:"minecraft:armor",amount:4,operation:"add_value",display:{type:"default"},slot:"head"},{"id":"rr.armor_toughness.helmet",type:"minecraft:armor_toughness",amount:3,operation:"add_value",display:{type:"default"},slot:"head"},{"id":"rr.knockback_resistance.helmet",type:"minecraft:knockback_resistance",amount:0.125,operation:"add_value",display:{type:"default"},slot:"head"}],max_damage=456,item_model="rr_recast:equipment/armor/sculk_plate/sculk_plate_helmet",enchantable={value:20},equippable={slot:"head",asset_id:"rr_recast:sculk_plate/sculk_plate",equip_sound:"minecraft:item.armor.equip_chain",equip_on_interact:true,swappable:true},enchantments={protection:6,aqua_affinity:1,respiration:5,unbreaking:5,mending:1},unbreakable={}] 1

give @s netherite_chestplate[item_name=[{"translate":"item.rr_recast.tenebrium_chestplate","fallback":"Tenebrium Chest","color":"#5387D6","italic":false}],attribute_modifiers=[{"id":"rr.armor.chestplate",type:"minecraft:armor",amount:9,operation:"add_value",display:{type:"default"},slot:"chest"},{"id":"rr.armor_toughness.chestplate",type:"minecraft:armor_toughness",amount:3,operation:"add_value",display:{type:"default"},slot:"chest"},{"id":"rr.knockback_resistance.chestplate",type:"minecraft:knockback_resistance",amount:0.125,operation:"add_value",display:{type:"default"},slot:"chest"}],max_damage=664,item_model="rr_recast:equipment/armor/sculk_plate/sculk_plate_chestplate",enchantable={value:20},equippable={slot:"chest",asset_id:"rr_recast:sculk_plate/sculk_plate",equip_sound:"minecraft:item.armor.equip_chain",equip_on_interact:true,swappable:true},enchantments={protection:6,"rr_aea:extension":4,"sbhp:bolster":4,"sbhp:recovery":4,unbreaking:5,mending:1},unbreakable={}] 1

give @s netherite_leggings[item_name=[{"translate":"item.rr_recast.tenebrium_leggings","fallback":"Tenebrium Legs","color":"#5387D6","italic":false}],attribute_modifiers=[{"id":"rr.armor.leggings",type:"minecraft:armor",amount:7,operation:"add_value",display:{type:"default"},slot:"legs"},{"id":"rr.armor_toughness.leggings",type:"minecraft:armor_toughness",amount:3,operation:"add_value",display:{type:"default"},slot:"legs"},{"id":"rr.knockback_resistance.leggings",type:"minecraft:knockback_resistance",amount:0.125,operation:"add_value",display:{type:"default"},slot:"legs"}],max_damage=622,item_model="rr_recast:equipment/armor/sculk_plate/sculk_plate_leggings",enchantable={value:20},equippable={slot:"legs",asset_id:"rr_recast:sculk_plate/sculk_plate",equip_sound:"minecraft:item.armor.equip_chain",equip_on_interact:true,swappable:true},enchantments={protection:6,swift_sneak:5,unbreaking:5,mending:1},unbreakable={}] 1

give @s netherite_boots[item_name=[{"translate":"item.rr_recast.tenebrium_boots","fallback":"Tenebrium Boots","color":"#5387D6","italic":false}],attribute_modifiers=[{"id":"rr.armor.boots",type:"minecraft:armor",amount:4,operation:"add_value",display:{type:"default"},slot:"feet"},{"id":"rr.armor_toughness.boots",type:"minecraft:armor_toughness",amount:3,operation:"add_value",display:{type:"default"},slot:"feet"},{"id":"rr.knockback_resistance.boots",type:"minecraft:knockback_resistance",amount:0.125,operation:"add_value",display:{type:"default"},slot:"feet"}],max_damage=539,item_model="rr_recast:equipment/armor/sculk_plate/sculk_plate_boots",enchantable={value:20},equippable={slot:"feet",asset_id:"rr_recast:sculk_plate/sculk_plate",equip_sound:"minecraft:item.armor.equip_chain",equip_on_interact:true,swappable:true},enchantments={protection:6,depth_strider:5,soul_speed:5,unbreaking:5,mending:1},unbreakable={}] 1

give @s shield[enchantments={unbreaking:5,mending:1,"rr_aea:foresight":1,"rr_aea:opening":1}]

give @s \
bow[\
    item_name={\
        "translate":"item.rr_recast.tenebrium_bow",\
        "fallback":"Tenebrium Bow",\
        "color":"#3367B6",\
        "italic":false\
    },\
    lore=[\
        {"text":""},\
        {\
            "translate":"text.rr_recast.bow.when_shot",\
            "fallback":"When Shot:",\
            "color":"gray",\
            "italic":false\
        },\
        {\
            "translate":"text.rr_recast.tenebrium_bow.arrow_speed",\
            "fallback":"+35%% Arrow Speed",\
            "color":"dark_green",\
            "italic":false\
        }\
    ],\
    item_model="rr_recast:equipment/weapon/bow/tenebrium_bow",\
    custom_data={\
      "rr.custom_bow":true,\
      "rr.sculkshot":true,\
      "rr.bow.arrow_speed_35":true\
    },\
    unbreakable={},\
    damage_resistant={types:"#minecraft:is_fire"},\
    enchantments={power:8,infinity:1,"rr_aea:rebound":2,"rr_aea:pin":1,"rr_aea:recursion":3,"rr_aea:unrest":1,piercing:4}\
]

give @s crossbow[enchantments={power:8,unbreaking:5,mending:1,infinity:1,"rr_aea:pin":1,quick_charge:4,"rr_aea:boomstick":3}]

give @s arrow 1
give @s golden_carrot 64
give @s golden_apple 64
function sbhp:give/tincture/health_5_macro {count:16}