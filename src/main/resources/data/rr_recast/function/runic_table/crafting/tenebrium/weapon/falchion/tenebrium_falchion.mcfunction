execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data modify entity @s data.rr_recast.enchantment_transfer set from entity @s item.components."minecraft:enchantments"
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run item replace entity @s contents with netherite_sword[\
    item_name={\
        "translate": "item.rr_recast.tenebrium_falchion",\
        "fallback": "Tenebrium Falchion",\
        "color": "#3367B6",\
        "italic": false\
    },\
    custom_data={rr.sharpness_checked:0,rr.sharpness:0,rr.tenebrium_falchion:1b},\
    item_model="rr_recast:equipment/weapon/falchion/tenebrium_falchion",\
    attribute_modifiers=[\
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
    unbreakable={},\
    damage_resistant={types:"#minecraft:is_fire"}\
]
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data modify entity @s item.components."minecraft:enchantments" set from entity @s data.rr_recast.enchantment_transfer
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data remove entity @s data.rr_recast.enchantment_transfer
execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!rr.runic_table.item.5,tag=rr.runic_table.item] run kill @s

playsound minecraft:block.anvil.land block @a[distance=..20] ~ ~ ~ 0.6 1.25 0