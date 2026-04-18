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
            "minecraft:item_name":{"text":"Recovery","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Recovery improves your ability"},\
                {"color":"gray","italic":false,"text":"to get back into shape after"},\
                {"color":"gray","italic":false,"text":"taking damage. Additionally,"},\
                {"color":"gray","italic":false,"text":"it slightly reduces the lasting"},\
                [{"color":"gray","italic":false,"text":"impacts of Fire "},{"color":"gray","italic":false,strikethrough:true,"text":"and some ailments"}],\
                {"color":"gray","italic":false,"text":"(not yet implemented)"},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"sbhp:recovery":5},\
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
                {"color":"gray","italic":false,"text":"Each level improves your"},\
                {"color":"gray","italic":false,"text":"regeneration rate by"},\
                {"color":"gray","italic":false,"text":"0.8% of your Max HP per second."},\
                {"color":"gray","italic":false,"text":"Each level also reduces the amount"},\
                {"color":"gray","italic":false,"text":"of time you will be on fire by"},\
                {"color":"gray","italic":false,"text":"5% at levels 2+."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Chestplates"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"5","color":"white"}],\
                {"color":"gray","italic":false,"text":"[Level I] - +0.8% regeneration"},\
                {"color":"gray","italic":false,"text":"[Level II] - +1.6% regeneration, -5% burn time"},\
                {"color":"gray","italic":false,"text":"[Level III] - +2.4% regeneration, -10% burn time"},\
                {"color":"gray","italic":false,"text":"[Level IV] - +3.2% regeneration, -15% burn time"},\
                {"color":"gray","italic":false,"text":"[Level V] - +4% regeneration, -20% burn time"},\
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
                {"color":"green","italic":false,"text":"  Yes, from Jungle"},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/recovery/open","model":"sbhp:book/recovery_5"}'\
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