# Arcane Bolt Changes:
# +2 Splits
give @p diamond_leggings\
[\
    item_name=[{"text":"Magic Bolt Split Leggings (A)"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Split: "}],\
        {"text":"  +2 Projectiles","color":"red"},\
        {"text":"  +90 Split Angle (Horizontal)","color":"red"}\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.split:\
        {\
            "spell_reference":"magic_bolt",\
            "split_count":"1",\
            "split_direction":\
            {\
                "horizontal":1,\
                "vertical":0,\
                "forward":0\
            },\
            "projectile_count":2,\
        }\
    },\
]