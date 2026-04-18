# Arcane Bolt Changes:
# -2 dmg
give @p diamond_helmet\
[\
    item_name=[{"text":"Magic Bolt Dmg Nerf Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Damage: "},\
        {"text":"-2","color":"red"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.damage_boost:\
        {\
            "amount":-2.0\
        }\
    },\
]