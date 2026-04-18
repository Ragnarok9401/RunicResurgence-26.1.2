# Arcane Bolt Changes:
# -0.021 acceleration
give @p diamond_chestplate\
[\
    item_name=[{"text":"Magic Bolt Acceleration Nerf Chestplate"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Acceleration: "},\
        {"text":"-0.021 Blocks/Tick/Tick","color":"red"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.acceleration_boost:\
        {\
            "amount":-0.021\
        }\
    },\
]