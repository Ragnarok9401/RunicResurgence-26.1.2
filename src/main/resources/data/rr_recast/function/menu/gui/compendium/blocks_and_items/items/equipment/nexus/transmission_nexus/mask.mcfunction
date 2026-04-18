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
            "minecraft:item_name":{"text":"Transmission Nexus","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"An energetic well of Astral"},\
                {"color":"gray","italic":false,"text":"energy flows in this crystal."},\
                {"color":"gray","italic":false,"text":"It has the power to remember a"},\
                {"color":"gray","italic":false,"text":"single position within the"},\
                {"color":"gray","italic":false,"text":"universe."},\
                ],\
            item_model:"rr_recast:generic/transmission_nexus",\
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
            "minecraft:item_name":{"text":"How To Use","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Left-click on the block you"},\
                {"color":"gray","italic":false,"text":"wish to save the location of."},\
                {"color":"gray","italic":false,"text":"Teleporting to this location"},\
                {"color":"gray","italic":false,"text":"will place you on top of that"},\
                {"color":"gray","italic":false,"text":"block. The saved position must"},\
                {"color":"gray","italic":false,"text":"be considered \"open\", meaning"},\
                {"color":"gray","italic":false,"text":"it must have walkable space"},\
                {"color":"gray","italic":false,"text":"two blocks above."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"red","italic":false,"text":"IMPORTANT NOTE:"},\
                {"color":"gray","italic":false,"text":"The Nexus can only store ONE"},\
                {"color":"gray","italic":false,"text":"location! Make sure you click"},\
                {"color":"gray","italic":false,"text":"carefully!"}\
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
            item_model:"rr_recast:generic/astral_essence",\
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
            item_model:"rr_recast:havenite/havenite_crystal",\
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
            item_model:"rr_recast:generic/astral_essence",\
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
            item_model:"rr_recast:havenite/havenite_crystal",\
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
            item_model:"minecraft:end_crystal",\
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
            item_model:"rr_recast:havenite/havenite_crystal",\
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
            item_model:"rr_recast:generic/astral_essence",\
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
            item_model:"rr_recast:havenite/havenite_crystal",\
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
            item_model:"rr_recast:generic/astral_essence",\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/equipment/nexus/transmission_nexus/open","model":"rr_recast:generic/transmission_nexus"}'\
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