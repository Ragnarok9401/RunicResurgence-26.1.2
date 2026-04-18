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
            "minecraft:item_name":{"text":"Rare Havenite Shard","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A small, glowing piece of a"},\
                {"color":"gray","italic":false,"text":"meteor. It contains a bit"},\
                {"color":"gray","italic":false,"text":"more magical energy than its"},\
                {"color":"gray","italic":false,"text":"common counterpart."},\
                ],\
            item_model:"rr_recast:havenite/rare_havenite_shard",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:paper",\
        "components":\
        {\
            "minecraft:item_name":{"text":"How to Obtain:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This shard can be mined"},\
                [\
                    {"color":"gray","italic":false,"text":"from a "},\
                    {"color":"aqua","italic":false,"text":"Havenite Meteor"},\
                    {"color":"gray","italic":false,"text":" by"}\
                ],\
                {"color":"gray","italic":false,"text":"hitting it with any Pickaxe."},\
                {"color":"gray","italic":false,"text":"If the pickaxe has Efficiency,"},\
                {"color":"gray","italic":false,"text":"then the meteor will be"},\
                {"color":"gray","italic":false,"text":"harvested faster."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"red","italic":false,"text":"IMPORTANT NOTE:"},\
                {"color":"gray","italic":false,"text":" Using Silk Touch will give"},\
                {"color":"gray","italic":false,"text":" Meteor Chunks instead of"},\
                {"color":"gray","italic":false,"text":" Shards."}\
            ],\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:chest",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Drop Rate:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"For every harvest:"},\
                {"color":"green","italic":false,"text":"  4%, or 1/25"},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"red","italic":false,"text":"IMPORTANT NOTE:"},\
                {"color":"gray","italic":false,"text":"  Using Silk Touch will give"},\
                {"color":"gray","italic":false,"text":"  Meteor Chunks instead of"},\
                {"color":"gray","italic":false,"text":"  Shards."}\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/materials/rare_havenite_shard/open","model":"rr_recast:havenite/rare_havenite_shard"}'\
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
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_2",\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]
#
    #{\
    #    Slot:15b,\
    #    id:"minecraft:music_disc_cat",\
    #    "components":\
    #    {\
    #        "minecraft:item_name":{"text":"Go to Havenite Meteor Page","color":"white"},\
    #        lore:[\
    #            {"color":"gray","italic":false,"text":"Click to go to the Havenite Meteor page!"}\
    #        ],\
    #        item_model:"rr_recast:havenite/havenite_meteor",\
    #        "!minecraft:jukebox_playable":{},\
    #        "minecraft:custom_data":\
    #            {\
    #                RunicMenuItem:\
    #                {\
    #                    command:'function rr_recast:menu/gui/compendium/blocks_and_items/blocks/details/havenite_meteorite/open {"page":"blocks_and_items/items/materials/rare_havenite_shard/open","model":"rr_recast:havenite/rare_havenite_shard"}'\
    #                }\
    #            }\
    #    }\
    #},