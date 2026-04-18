# Arcane Bolt Changes:
# +10 dmg, +2 AOE
give @p diamond_helmet\
[\
    item_name=[{"text":"Magic Bolt Dmg and AOE Buff Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Damage: "},\
        {"text":"+10","color":"green"}],\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt AOE: "},\
        {"text":"+2 Blocks","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.damage_boost:\
        {\
            "amount":10.0\
        },\
        rr.spell.magic_bolt.aoe_boost:\
        {\
            "amount":2.0\
        }\
    },\
]