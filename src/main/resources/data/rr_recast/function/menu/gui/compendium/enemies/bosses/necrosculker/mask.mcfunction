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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/open"}\
            }\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"The Necrosculker","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"The Defiler of the Depths"},\
                ],\
            item_model:"rr_recast:boss_item/necrosculker/suspicious_dark_heart",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/necrosculker/t1/open"}\
            }\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":[{"text":"Elite Necrosculker [","color":"white"},{"text":"⭐","color":"yellow"},{"text":"]","color":"white"}],\
            lore:[\
                {"color":"gray","italic":false,"text":"The Darker Defiler"},\
                ],\
            item_model:"rr_recast:boss_item/necrosculker/angered_dark_heart",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/necrosculker/t2/open"}\
            }\
        }\
    },\
    {\
        Slot:14b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":[{"text":"Nightmare Necrosculker [","color":"white"},{"text":"⭐⭐","color":"yellow"},{"text":"]","color":"white"}],\
            lore:[\
                {"color":"gray","italic":false,"text":"The Forsaken Titan"},\
                ],\
            item_model:"rr_recast:boss_item/necrosculker/wrathful_dark_heart",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/necrosculker/t3/open"}\
            }\
        }\
    },\
    {\
        Slot:16b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":[{"text":"Void Necrosculker [","color":"white"},{"text":"⭐⭐⭐","color":"yellow"},{"text":"]","color":"white"}],\
            lore:[\
                {"color":"gray","italic":false,"text":"The Desolate Destroyer"},\
                ],\
            item_model:"rr_recast:boss_item/necrosculker/evil_dark_heart",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/necrosculker/t4/open"}\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/items_menu",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]