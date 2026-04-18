give @s \
netherite_sword[\
    item_name={\
        "translate": "item.rr_recast.soulsalve",\
        "fallback": "Soulsalve",\
        "color": "#3367B6",\
        "italic": false\
    },\
    custom_data={rr.sharpness_checked:0,rr.sharpness:0,rr.soulsalve:1b},\
    item_model="rr_recast:equipment/weapon/falchion/soulsalve",\
    attribute_modifiers=[\
        {\
            "type":"attack_damage",\
            "id":"rr_recast:soulsalve.attack_damage_base",\
            "amount":18,\
            "operation":"add_value",\
            "slot":"mainhand",\
            "display": {\
                "type": "override",\
                "value": {\
                    "text": " ",\
                    "extra": [\
                        {\
                            "text": "18",\
                            "extra": [\
                                {\
                                    "text": " ",\
                                    "extra": [\
                                        {\
                                            "translate": "attribute.name.attack_damage",\
                                            "fallback": "Attack Damage",\
                                            "italic": false\
                                        }\
                                    ],\
                                    "italic": false\
                                }\
                            ],\
                            "italic": false\
                        }\
                    ],\
                    "color": "dark_green",\
                    "italic": false\
                }\
            }\
        },\
        {\
            "type": "minecraft:attack_speed",\
            "id": "rr_recast:soulsalve.attack_speed_base",\
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
                    "color": "dark_green",\
                    "italic": false\
                }\
            }\
        }\
    ],\
    unbreakable={},\
    damage_resistant={types:"#minecraft:is_fire"}\
]