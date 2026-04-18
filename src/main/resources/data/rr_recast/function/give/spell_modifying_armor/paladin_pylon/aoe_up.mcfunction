# Arcane Bolt Changes:
# +2 AOE
give @p iron_helmet\
[\
    item_name=[{"text":"Paladin's Pylon Radius Buff Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Paladin's Pylon Aura Radius: "},\
        {"text":"+2 Blocks","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.paladin_pylon.aura_radius_boost:\
        {\
            "amount":2.0\
        }\
    },\
]