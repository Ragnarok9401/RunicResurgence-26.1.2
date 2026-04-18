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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/regular/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Aegis","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Blocking hits repairs a small"},\
                {"color":"gray","italic":false,"text":"amount of your shield's"},\
                {"color":"gray","italic":false,"text":"durability."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:aegis":3},\
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
                {"color":"gray","italic":false,"text":"Aegis repairs roughly 1% of"},\
                {"color":"gray","italic":false,"text":"durability per level per"},\
                {"color":"gray","italic":false,"text":"point of damage blocked."},\
                {"color":"gray","italic":false,"text":"Small hits will repair the"},\
                {"color":"gray","italic":false,"text":"shield, but larger hits"},\
                {"color":"gray","italic":false,"text":"can still push through the"},\
                {"color":"gray","italic":false,"text":"repair. Be warned!"},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Shields"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"3","color":"white"}],\
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
                {"color":"gray","italic":false,"text":"Enchanting Table:"},\
                {"color":"green","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"From Loot:"},\
                {"color":"green","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"Is Treasure:"},\
                {"color":"green","italic":false,"text":"  No"},\
                {"color":"gray","italic":false,"text":"Traded:"},\
                {"color":"green","italic":false,"text":"  Yes, from Taiga"},\
                {"color":"green","italic":false,"text":"  Villagers (common)"},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/aegis/open","model":"aea:book/aegis_3"}'\
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