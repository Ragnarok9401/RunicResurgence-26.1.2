# Arcane Bolt Changes:
# +0.5 speed
give @p diamond_chestplate\
[\
    item_name=[{"text":"Magic Bolt Speed Buff Chestplate"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Speed: "},\
        {"text":"+10 Blocks/Sec","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.speed_boost:\
        {\
            "amount":10\
        }\
    },\
]