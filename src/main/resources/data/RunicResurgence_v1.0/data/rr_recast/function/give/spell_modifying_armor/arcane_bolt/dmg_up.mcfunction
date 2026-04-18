# Arcane Bolt Changes:
# +10 dmg
give @p diamond_helmet\
[\
    item_name=[{"text":"Magic Bolt Dmg Buff Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Damage: "},\
        {"text":"+10","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.damage_boost:\
        {\
            "amount":10.0\
        }\
    },\
]