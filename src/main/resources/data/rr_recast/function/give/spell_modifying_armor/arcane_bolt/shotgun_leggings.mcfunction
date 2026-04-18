# Arcane Bolt Changes:
# +9 Projectiles
# +0 Ticks Shot Delay
# +4 Blocks/Sec Randomness
# +12 Degrees Angle Randomness
# +4 Damage Randomness
give @p diamond_leggings\
[\
    item_name=[{"text":"Magic Bolt Shotgun Leggings"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Projectile(s): "}],\
        {"text":"  +9 Projectile Count","color":"green","italic":false},\
        {"text":"  +0 Ticks Shot Delay","color":"yellow","italic":false},\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Randomness: "}],\
        {"text":"  +4 Blocks/Sec Randomness","color":"yellow","italic":false},\
        {"text":"  +4 Damage Randomness","color":"yellow","italic":false},\
        {"text":"  +12 Degrees Angle Randomness","color":"red","italic":false},\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.projectiles_boost:\
        {\
            "amount":9\
        },\
        rr.spell.magic_bolt.projectiles_delay:\
        {\
            "amount":0\
        },\
        rr.spell.magic_bolt.randomness:\
        {\
            speed:\
            {\
                "amount":4\
            },\
            damage:\
            {\
                "amount":4\
            },\
            angle:\
            {\
                "amount":12\
            },\
            lifespan:\
            {\
                "amount":0\
            },\
        }\
    },\
]