give @s \
stone_sword[\
    item_name={\
        "translate": "item.rr_recast.sculk_falchion",\
        "fallback": "Sculk Falchion",\
        "color": "#3367B6",\
        "italic": false\
    },\
    custom_data={rr.sharpness_checked:0,rr.sharpness:0,rr.sculk_falchion:1b},\
    item_model="rr_recast:equipment/weapon/falchion/sculk_falchion",\
    attribute_modifiers=[\
        {\
            "type":"attack_damage",\
            "id":"rr_recast:sculk_falchion.attack_damage_base",\
            "amount":12,\
            "operation":"add_value",\
            "slot":"mainhand",\
            "display": {\
                "type": "override",\
                "value": {\
                    "text": " ",\
                    "extra": [\
                        {\
                            "text": "12",\
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
            "id": "rr_recast:sculk_falchion.attack_speed_base",\
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
    max_damage=2643\
]