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
            "minecraft:item_name":{"text":"Sculk Falchion","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Some ancient weapon that carries"},\
                {"color":"gray","italic":false,"text":"a strong Sculk infusion. Whether"},\
                {"color":"gray","italic":false,"text":"this makes it stronger or weaker,"},\
                {"color":"gray","italic":false,"text":"nobody really knows."},\
                ],\
            item_model:"rr_recast:equipment/weapon/falchion/sculk_falchion",\
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
                [{"color":"gray","italic":false,"text":"Attack Damage: "},{"text":"12","color":"white"}],\
                [{"color":"gray","italic":false,"text":"Attack Speed: "},{"text":"1.4","color":"white"}],\
                [{"color":"gray","italic":false,"text":"Durability: "},{"text":"2643","color":"white"}],\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/equipment/weapon/falchion/sculk_falchion/open","model":"rr_recast:equipment/weapon/falchion/sculk_falchion"}'\
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