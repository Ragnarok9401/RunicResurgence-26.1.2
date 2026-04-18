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
            "minecraft:item_name":{"text":"Slipstream","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Slipstream allows a Happy Ghast to"},\
                {"color":"gray","italic":false,"text":"fly with the winds, which somehow"},\
                {"color":"gray","italic":false,"text":"always steer in the right direction."},\
                {"color":"gray","italic":false,"text":"A Happy Ghast with Slipstream will"},\
                {"color":"gray","italic":false,"text":"fly faster depending on how high"},\
                {"color":"gray","italic":false,"text":"it is."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:slipstream":5},\
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
                {"color":"gray","italic":false,"text":"Each level adds one Height Tier to"},\
                {"color":"gray","italic":false,"text":"the enchantment. Each Height Tier"},\
                {"color":"gray","italic":false,"text":"allows the ghast to move faster."},\
                {"color":"gray","italic":false,"text":"For example, Slipstream 4 would allow"},\
                {"color":"gray","italic":false,"text":"the Happy Ghast to use Height Tiers"},\
                {"color":"gray","italic":false,"text":"1-4, but not 5."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Happy Ghast Harnesses"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"5","color":"white"}],\
                {"color":"gray","italic":false,"text":"[Height Tier 1] - Y = 100-149, +30% Speed"},\
                {"color":"gray","italic":false,"text":"[Height Tier 2] - Y = 150-199, +60% Speed"},\
                {"color":"gray","italic":false,"text":"[Height Tier 3] - Y = 200-249, +90% Speed"},\
                {"color":"gray","italic":false,"text":"[Height Tier 4] - Y = 250-299, +120% Speed"},\
                {"color":"gray","italic":false,"text":"[Height Tier 5] - Y = 300+, +150% Speed"},\
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
                {"color":"green","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"Traded:"},\
                {"color":"green","italic":false,"text":"  Yes, from Snowy"},\
                [\
                    {"color":"green","italic":false,"text":"  Villagers ("},\
                    {"color":"yellow","italic":false,"text":"special"},\
                    {"color":"green","italic":false,"text":")"}\
                ],\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/slipstream/open","model":"aea:book/slipstream_5"}'\
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