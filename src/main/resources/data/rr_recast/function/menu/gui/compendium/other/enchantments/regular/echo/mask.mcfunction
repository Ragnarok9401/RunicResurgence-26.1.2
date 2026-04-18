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
            "minecraft:item_name":{"text":"Echo","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Echo allows your weapon to summon"},\
                {"color":"gray","italic":false,"text":"a moving cloud of wind strikes that"},\
                {"color":"gray","italic":false,"text":"deal steady area damage without"},\
                {"color":"gray","italic":false,"text":"any knockback. Clouds move in a"},\
                {"color":"gray","italic":false,"text":"straight line relative to where the"},\
                {"color":"gray","italic":false,"text":"user was looking on summon. This does"},\
                {"color":"gray","italic":false,"text":"not deal damage to players."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:echo":3},\
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
                {"color":"gray","italic":false,"text":"Each level adds to the speed,"},\
                {"color":"gray","italic":false,"text":"damage, and amount of slices"},\
                {"color":"gray","italic":false,"text":"for every cloud summoned. There"},\
                {"color":"gray","italic":false,"text":"is a 20% chance to create a cloud"},\
                {"color":"gray","italic":false,"text":"per hit."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Swords, Axes"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"3","color":"white"}],\
                {"color":"gray","italic":false,"text":"[Level I] - 7 slices, 2.5 damage each"},\
                {"color":"gray","italic":false,"text":"[Level II] - 8 slices, 3 damage each"},\
                {"color":"gray","italic":false,"text":"[Level III] - 11 slices, 3.5 damage each"},\
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
                {"color":"green","italic":false,"text":"  Yes, from Plains"},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/echo/open","model":"aea:book/echo_3"}'\
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