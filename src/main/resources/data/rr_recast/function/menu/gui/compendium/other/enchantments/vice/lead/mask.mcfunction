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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/vice/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Lead","color":"dark_red"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Your shield is as heavy as lead."},\
                {"color":"gray","italic":false,"text":"While blocking, you are unable to"},\
                {"color":"gray","italic":false,"text":"move or jump, and just holding it"},\
                {"color":"gray","italic":false,"text":"makes you 15% slower."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:lead":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{empty:1b}\
            }\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Stats:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Shields"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"1","color":"white"}],\
            ],\
            "minecraft:item_model":"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"How to Obtain:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Vices come as frequent counters"},\
                {"color":"gray","italic":false,"text":"to Blessings. Every Blessing comes with"},\
                {"color":"gray","italic":false,"text":"a Vice for the same tool or weapon, so"},\
                {"color":"gray","italic":false,"text":"consider their effects carefully."},\
            ],\
            "minecraft:item_model":"minecraft:enchanting_table",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:attribute_modifiers":{},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/vice/lead/open","model":"aea:book/lead_vice"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_2",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]