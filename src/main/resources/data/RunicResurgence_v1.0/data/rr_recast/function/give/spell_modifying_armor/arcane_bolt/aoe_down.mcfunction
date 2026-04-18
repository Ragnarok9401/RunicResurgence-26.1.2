# Arcane Bolt Changes:
# -1 AOE
give @p diamond_helmet\
[\
    item_name=[{"text":"Magic Bolt AOE Nerf Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt AOE: "},\
        {"text":"-1 Blocks","color":"red"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.aoe_boost:\
        {\
            "amount":-1.0\
        }\
    },\
]