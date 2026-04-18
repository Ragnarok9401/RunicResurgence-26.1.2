
# Executes at center of block
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run summon item_display ~ ~0.5 ~ {Tags:["rr.runic_table.preview","rr.runic_table.preview.display","rr.runic_table"],item_display:"fixed",billboard:"vertical",transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.35,0.35,0.35],translation:[0,0,0]},item:{id:"minecraft:netherite_boots",count:1,components:{\
    item_name:{\
        "translate": "item.rr_recast.tenebrium_falchion",\
        "fallback": "Tenebrium Falchion",\
        "color": "#3367B6",\
        "italic": false\
    },\
    custom_data:{rr.sharpness_checked:0,rr.sharpness:0,rr.tenebrium_falchion:1b},\
    item_model:"rr_recast:equipment/weapon/falchion/tenebrium_falchion",\
    attribute_modifiers:[\
        {\
            "type":"attack_damage",\
            "id":"rr_recast:tenebrium_falchion.attack_damage_base",\
            "amount":14,\
            "operation":"add_value",\
            "slot":"mainhand",\
            "display":{\
                "type":"default"\
            }\
        },\
        {\
            "type": "minecraft:attack_speed",\
            "id": "rr_recast:tenebrium_falchion.attack_speed_base",\
            "amount": -2.6,\
            "operation": "add_value",\
            "slot": "mainhand",\
            "display": {\
                "type": "override",\
                "value": {\
                    "text": " ",\
                    "extra": [\
                        {\
                            "text": "1.4",\
                            "extra": [\
                                {\
                                    "text": " ",\
                                    "extra": [\
                                        {\
                                            "translate": "attribute.name.attack_speed",\
                                            "fallback": "Attack Speed",\
                                            "italic": false\
                                        }\
                                    ],\
                                    "italic": false\
                                }\
                            ],\
                            "italic": false\
                        }\
                    ],\
                    "color": "blue",\
                    "italic": false\
                }\
            }\
        }\
    ],\
    unbreakable:{},\
    damage_resistant:{types:"#minecraft:is_fire"}\
}}}
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run summon interaction ~ ~0.35 ~ {Tags:["rr.runic_table.preview","rr.runic_table.preview.interaction","rr.runic_table"],width:0.25f,height:0.25f,data:{path:"rr_recast:runic_table/crafting/tenebrium/weapon/falchion/tenebrium_falchion"}}
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run summon text_display ~ ~0.5 ~ {Tags:["rr.runic_table.preview","rr.runic_table.preview.text","rr.runic_table"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,0.25,0]},text:{"text":" ","color":"white","italic":false},background:false,billboard:"vertical"}
execute positioned ~ ~0.9375 ~ as @n[type=text_display,distance=..0.1,tag=rr.runic_table.preview.text] run function rr_recast:runic_table/crafting/set_preview_text