# Command gives a Basic Runic Tablet (Tier 1) with a negative Acceleration modifier applied to all projectiles

give @s music_disc_cat[\
    item_model="rr_recast:tablet/basic/runic_tablet_basic",\
    item_name=[\
        {"text":"Basic Runic Tablet","color":"aqua"}\
    ],\
    lore=[\
        {"text":""},\
        {"color":"dark_aqua","italic":false,"text":"Traits:"},\
        [\
            {"color":"dark_aqua","italic":false,"text":" • "},\
            {"color":"aqua","italic":false,"text":"Tablet Tier:"},\
            {"color":"dark_aqua","italic":false,"text":" 1"}\
        ],\
        [\
            {"color":"dark_aqua","italic":false,"text":" • "},\
            {"color":"aqua","italic":false,"text":"Proj. Acceleration:"},\
            {"color":"red","italic":false,"text":" -0.015"}\
        ],\
        {"text":""},\
        [\
            {"text":"Press [","color":"dark_gray","italic":false},\
            {"keybind":"key.sneak","bold":false,"color":"gray","italic":false},\
            {"text":"] to use","color":"dark_gray","italic":false,"bold":false}\
        ]\
    ],\
    custom_data={\
        CustomDisc:1b,\
        RunicTablet:1b,\
        RunicTabletTier:1,\
        RunicNoSongDisc:1b,\
        RunicTabletForm:1,\
        rr.projectile.boosts_acceleration:1b,\
        rr.projectile.acceleration:{\
            change:-0.015,\
            add_minimum:0.0,\
            add_maximum:0.0\
        }\
    },\
    max_stack_size=4,\
    !minecraft:jukebox_playable\
]