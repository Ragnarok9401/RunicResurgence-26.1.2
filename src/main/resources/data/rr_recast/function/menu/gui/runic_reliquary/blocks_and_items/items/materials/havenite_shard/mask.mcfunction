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
            "minecraft:item_name":{"text":"Havenite Shard","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A small, warm piece of a meteor."},\
                {"color":"gray","italic":false,"text":"While faint, it contains some"},\
                {"color":"gray","italic":false,"text":"small level of magical energy."},\
                ],\
            item_model:"rr_recast:havenite/havenite_shard",\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/materials/havenite_shard/open","model":"rr_recast:havenite/havenite_shard"}'\
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