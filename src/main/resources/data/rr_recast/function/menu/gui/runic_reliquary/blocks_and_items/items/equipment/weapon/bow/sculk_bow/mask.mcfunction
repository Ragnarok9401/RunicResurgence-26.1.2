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
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Sculk Bow","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Some ancient weapon that carries"},\
                {"color":"gray","italic":false,"text":"a strong Sculk infusion. Whether"},\
                {"color":"gray","italic":false,"text":"this makes it stronger or weaker,"},\
                {"color":"gray","italic":false,"text":"nobody really knows."},\
                ],\
            item_model:"rr_recast:equipment/weapon/bow/deep_dark_bow",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"How to Obtain:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This weapon must be obtained"},\
                {"color":"gray","italic":false,"text":"from the Necrosculker boss. It"},\
                {"color":"gray","italic":false,"text":"drops more frequently with"},\
                {"color":"gray","italic":false,"text":"higher tiers."},\
            ],\
            "!minecraft:attribute_modifiers":{},\
            item_model:"minecraft:chest",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Base Stats:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"Base Arrow Speed: "},{"text":"125%","color":"white"}],\
                [{"color":"gray","italic":false,"text":"Durability: "},{"text":"480","color":"white"}],\
            ],\
            "!minecraft:attribute_modifiers":{},\
            item_model:"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/equipment/weapon/bow/sculk_bow/open","model":"rr_recast:equipment/weapon/bow/deep_dark_bow"}'\
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
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_2"\
        }\
    }\
]