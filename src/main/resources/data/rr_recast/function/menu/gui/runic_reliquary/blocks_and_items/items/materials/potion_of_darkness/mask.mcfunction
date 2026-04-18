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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/materials/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Potion of Darkness","color":"white"},\
            lore:[\
                {"color":"red","italic":false,"text":"Darkness (08:00)"},\
                ],\
            item_model:"rr_recast:potion/darkness",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Recipe Details"},\
            lore:\
            [\
                {"text":"Required Station:","color":"gray","italic":false},\
                {"text":"    Runic Manipulation Table","color":"white","italic":false},\
                {"text":"Craft Time:","color":"gray","italic":false},\
                {"text":"    Instant","color":"white","italic":false},\
                [\
                    {"text":"Crafted Amount: ","color":"gray","italic":false},\
                    {"text":"1","color":"white"}\
                ],\
            ],\
            item_model:"rr_recast:block/runic_table/runic_table_inactive",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:15b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"To Blindness Potion Page","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Click here to go to"},\
                {"color":"gray","italic":false,"text":"the information page"},\
                {"color":"gray","italic":false,"text":"for the Blindness Potion"},\
            ],\
            "!minecraft:attribute_modifiers":{},\
            item_model:"minecraft:arrow",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:generic/sculk_essence",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:sculk_vein",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "minecraft:item_name":{"text":"Potion of Blindness","color":"white"},\
            item_model:"rr_recast:potion/blindness",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:sculk_vein",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:20b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:blaze_powder",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:8b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Back To Home Page","color":"white"},\
            item_model:"rr_recast:book/runic_compendium",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:\
                {\
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/materials/potion_of_darkness/open","model":"rr_recast:potion/darkness"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_1_recipe"\
        }\
    }\
]