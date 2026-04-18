# Arcane Bolt Changes:
# +4 Projectiles
# +2 Ticks Shot Delay
# +4 Blocks/Sec Randomness
# +3 Degrees Angle Randomness
# +4 Damage Randomness
give @p diamond_leggings\
[\
    item_name=[{"text":"Magic Bolt +Projectiles +Low Random Leggings"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Projectile(s): "}],\
        {"text":"  +4 Projectile Count","color":"green","italic":false},\
        {"text":"  +2 Ticks Shot Delay","color":"yellow","italic":false},\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Randomness: "}],\
        {"text":"  +4 Blocks/Sec Randomness","color":"yellow","italic":false},\
        {"text":"  +3 Damage Randomness","color":"yellow","italic":false},\
        {"text":"  +4 Degrees Angle Randomness","color":"red","italic":false},\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.projectiles_boost:\
        {\
            "amount":4\
        },\
        rr.spell.magic_bolt.projectiles_delay:\
        {\
            "amount":2\
        },\
        rr.spell.magic_bolt.randomness:\
        {\
            speed:\
            {\
                "amount":4\
            },\
            damage:\
            {\
                "amount":3\
            },\
            angle:\
            {\
                "amount":4\
            },\
            lifespan:\
            {\
                "amount":0\
            },\
        }\
    },\
]