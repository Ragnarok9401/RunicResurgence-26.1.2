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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Modest Tincture of Healing","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A little bit of spice goes"},\
                {"color":"gray","italic":false,"text":"a long way for flavor. And"},\
                {"color":"gray","italic":false,"text":"so do crystalline shards from"},\
                {"color":"gray","italic":false,"text":"a space rock, I guess."},\
                ],\
            item_model:"sbhp:tincture/health_2",\
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
                    {"text":"2","color":"white"}\
                ]\
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
            "minecraft:item_name":{"text":"Stats","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Consume Time:"},\
                {"color":"white","italic":false,"text":"    0.8 Seconds"},\
                {"color":"gray","italic":false,"text":"Total Heal:"},\
                {"color":"white","italic":false,"text":"    50 HP over 5 Seconds"},\
                {"color":"gray","italic":false,"text":"Cooldown:"},\
                {"color":"white","italic":false,"text":"    20 Seconds"},\
                {"color":"gray","italic":false,"text":"Hunger Restoration:"},\
                {"color":"white","italic":false,"text":"    1 Point"},\
            ],\
            "!minecraft:attribute_modifiers":{},\
            item_model:"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:redstone",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:havenite/havenite_shard",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:redstone",\
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
            item_model:"rr_recast:havenite/havenite_shard",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"sbhp:tincture/health",\
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
            item_model:"rr_recast:havenite/havenite_shard",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:19b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:redstone",\
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
            item_model:"rr_recast:havenite/havenite_shard",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:21b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:redstone",\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/equipment/tincture/healing/modest/open","model":"sbhp:tincture/health_2"}'\
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