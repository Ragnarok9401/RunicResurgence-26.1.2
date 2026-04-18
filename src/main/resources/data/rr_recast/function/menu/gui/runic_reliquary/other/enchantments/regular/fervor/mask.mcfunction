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
            "minecraft:item_name":{"text":"Fervor","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Attacking with Fervor allows you"},\
                {"color":"gray","italic":false,"text":"to store the damage you deal, giving"},\
                {"color":"gray","italic":false,"text":"you Haste and Speed buffs as you"},\
                {"color":"gray","italic":false,"text":"accumulate more."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:fervor":2},\
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
                {"color":"gray","italic":false,"text":"Fervor is directly stronger"},\
                {"color":"gray","italic":false,"text":"depending on the damage of your"},\
                {"color":"gray","italic":false,"text":"weapon. However, there is an upper"},\
                {"color":"gray","italic":false,"text":"limit on the damage stored. The"},\
                {"color":"gray","italic":false,"text":"maximum levels of the effects offered"},\
                {"color":"gray","italic":false,"text":"come just a little before the maximum"},\
                {"color":"gray","italic":false,"text":"stored damage."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Swords, Axes"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"2","color":"white"}],\
                {"color":"gray","italic":false,"text":"[Level I] - Max Speed: 1, Max Haste: 1"},\
                {"color":"gray","italic":false,"text":"[Level II] - Max Speed: 3, Max Haste: 3"},\
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
                {"color":"red","italic":false,"text":"  No"},\
                {"color":"gray","italic":false,"text":"From Loot:"},\
                {"color":"red","italic":false,"text":"  No"},\
                {"color":"gray","italic":false,"text":"Is Treasure:"},\
                {"color":"yellow","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"Traded:"},\
                {"color":"green","italic":false,"text":"  Yes, from Desert"},\
                [{"color":"green","italic":false,"text":"  Villagers ("},{"text":"special","color":"yellow"},{"text":")","color":"green"}],\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/fervor/open","model":"aea:book/fervor_2"}'\
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