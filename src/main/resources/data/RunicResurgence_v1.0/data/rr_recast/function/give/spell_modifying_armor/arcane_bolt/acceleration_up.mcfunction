# Arcane Bolt Changes:
# +0.02 acceleration
give @p diamond_chestplate\
[\
    item_name=[{"text":"Magic Bolt Acceleration Buff Chestplate"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Speed: "},\
        {"text":"-10 Blocks/Sec","color":"red"}],\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Acceleration: "},\
        {"text":"+0.025 Blocks/Tick/Tick","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.speed_boost:\
        {\
            "amount":-10\
        },\
        rr.spell.magic_bolt.acceleration_boost:\
        {\
            "amount":0.025\
        }\
    },\
]