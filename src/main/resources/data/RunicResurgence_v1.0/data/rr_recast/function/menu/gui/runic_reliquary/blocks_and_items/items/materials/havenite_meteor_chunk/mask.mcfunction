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
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Havenite Meteor Chunk","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A chunk of a Havenite Meteor."},\
                {"color":"gray","italic":false,"text":"It's fragile, but packs a large"},\
                {"color":"gray","italic":false,"text":"well of energy. Used to fuel the"},\
                {"color":"gray","italic":false,"text":"Runic Manipulation Table."},\
                ],\
            item_model:"rr_recast:havenite/havenite_meteor",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:paper",\
        "components":\
        {\
            "minecraft:item_name":{"text":"How to Obtain:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This chunk can be mined"},\
                [\
                    {"color":"gray","italic":false,"text":"from a "},\
                    {"color":"aqua","italic":false,"text":"Havenite Meteor"},\
                    {"color":"gray","italic":false,"text":" by"}\
                ],\
                {"color":"gray","italic":false,"text":"hitting it with any Pickaxe"},\
                {"color":"gray","italic":false,"text":"enchanted with Silk Touch."},\
            ],\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:8b,\
        id:"minecraft:book",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Back To Home Page","color":"white"},\
            item_model:"rr_recast:book/runic_compendium",\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:\
                {\
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/materials/havenite_meteor_chunk/open","model":"rr_recast:havenite/havenite_meteor"}'\
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
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_1"\
        }\
    }\
]