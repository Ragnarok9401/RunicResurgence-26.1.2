# 13b = center, 9b - 17b = center row, 0b - 8b = top row, 18b - 26b = bottom row
data modify storage rr.ui mask set value \
[\
    {\
        Slot:9b,\
        id:"minecraft:arrow",\
        "components":\
        {\
            item_model:"rr_recast:menu/compendium/icons/back",\
            "minecraft:item_name":{"text":"Back","color":"red"},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Regular","color":"yellow"},\
            item_model:"aea:book/echo_3",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/regular/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":\
            [\
                {\
                    "translate":"enchantment.aea.blessing_icon",\
                    "fallback":"*","color":"light_purple",\
                    "strikethrough":true\
                },\
                {\
                    "text":" ",\
                    "strikethrough": false\
                },\
                {\
                    "translate":"compendium.categories.blessings",\
                    "fallback":"Blessings (fallback)",\
                    "strikethrough": false\
                }\
            ],\
            item_model:"aea:book/pressure_blessing",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:enchantment_glint_override": true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/open"}\
            }\
        }\
    },\
    {\
        Slot:15b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":\
            [\
                {\
                    "translate":"enchantment.aea.vice_icon",\
                    "fallback":"↓","color":"dark_red",\
                    "strikethrough":true\
                },\
                {\
                    "text":" ","strikethrough":false,\
                },\
                {\
                    "translate":"compendium.categories.vices",\
                    "fallback":"Vices (fallback)",\
                    "strikethrough": false\
                }\
            ],\
            item_model:"aea:book/opening_vice",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:enchantment_glint_override": true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/vice/open"}\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/three_option_menu",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]