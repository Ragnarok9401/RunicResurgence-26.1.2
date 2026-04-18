# Arcane Bolt Changes:
# +4 Projectiles
# +2 Ticks Shot Delay
# +4 Blocks/Sec Randomness
# +3 Degrees Angle Randomness
# +4 Damage Randomness
give @p diamond_leggings\
[\
    item_name=[{"text":"Magic Bolt Machine Gun Leggings"}],\
    lore=\
    [\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Damage: "},{"color":"red","text":"-3"}],\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Speed: "}],\
        {"color":"green","italic":false,"text":"  +10 Blocks/Sec"},\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Lifespan: "}],\
        {"color":"red","italic":false,"text":"  -30 Ticks"},\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Projectile(s): "}],\
        {"text":"  +19 Projectile Count","color":"green","italic":false},\
        {"text":"  +3 Ticks Shot Delay","color":"yellow","italic":false},\
        [{"color":"dark_aqua","italic":false,"text":" • "},\
        {"color":"aqua","italic":false,"text":"Arcane Bolt Randomness: "}],\
        {"text":"  +2 Speed Randomness","color":"yellow","italic":false},\
        {"text":"  +0.5 Damage Randomness","color":"yellow","italic":false},\
        {"text":"  +3 Angle Randomness","color":"red","italic":false},\
    ],\
    minecraft:custom_data=\
    {\
        rr.spell.magic_bolt.damage_boost:\
        {\
            "amount":-3\
        },\
        rr.spell.magic_bolt.speed_boost:\
        {\
            "amount":10\
        },\
        rr.spell.magic_bolt.lifespan_boost:\
        {\
            "amount":-30\
        },\
        rr.spell.magic_bolt.projectiles_boost:\
        {\
            "amount":19\
        },\
        rr.spell.magic_bolt.projectiles_delay:\
        {\
            "amount":3\
        },\
        rr.spell.magic_bolt.randomness:\
        {\
            speed:\
            {\
                "amount":2\
            },\
            damage:\
            {\
                "amount":0.5\
            },\
            angle:\
            {\
                "amount":3\
            },\
            lifespan:\
            {\
                "amount":0\
            },\
        }\
    },\
]