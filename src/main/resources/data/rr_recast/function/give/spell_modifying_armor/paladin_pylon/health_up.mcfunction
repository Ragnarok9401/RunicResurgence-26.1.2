# Arcane Bolt Changes:
# +2 AOE
give @p iron_helmet\
[\
    item_name=[{"text":"Paladin's Pylon Health Buff Helm"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Paladin's Pylon Aura Health: "},\
        {"text":"+50 Health","color":"green"}]\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.paladin_pylon.aura_health_boost:\
        {\
            "amount":50\
        }\
    },\
]