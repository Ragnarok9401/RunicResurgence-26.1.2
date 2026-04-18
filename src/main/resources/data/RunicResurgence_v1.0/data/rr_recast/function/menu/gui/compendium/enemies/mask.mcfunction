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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/home/open"}\
            }\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Regular","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Enemies found throughout"},\
                {"color":"gray","italic":false,"text":"  the world during your"},\
                {"color":"gray","italic":false,"text":"  journey"},\
                ],\
            item_model:"minecraft:skeleton_spawn_egg",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/regular/open"}\
            }\
        }\
    },\
    {\
        Slot:14b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Bosses","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Difficult challenges that"},\
                {"color":"gray","italic":false,"text":"  will test your mettle"},\
                {"color":"gray","italic":false,"text":"  the most"},\
                ],\
            item_model:"rr_recast:trophy/necrosculker_trophy",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/open"}\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/block_or_item",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]