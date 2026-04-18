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
            "minecraft:item_name":{"text":"Shrink","color":"yellow"},\
            lore:[\
                {"color":"gray","italic":false,"text":"When wearing a piece of armor"},\
                {"color":"gray","italic":false,"text":"with Shrink, you become smaller"},\
                {"color":"gray","italic":false,"text":"and have decreased Jump Height,"},\
                {"color":"gray","italic":false,"text":"Block/Entity Reach, Step Height,"},\
                {"color":"gray","italic":false,"text":"Health, and Safe Fall Distance"},\
                {"color":"gray","italic":false,"text":"(amount of blocks you need to fall"},\
                {"color":"gray","italic":false,"text":"before fall damage starts)."},\
                {"color":"gray","italic":false,"text":"However, your Speed is increased."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:shrink":4},\
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
                {"color":"gray","italic":false,"text":"Each level subtracts from every"},\
                {"color":"gray","italic":false,"text":"stat listed under the Enchantment's"},\
                {"color":"gray","italic":false,"text":"description aside from Speed. At max"},\
                {"color":"gray","italic":false,"text":"level, you are half your regular size."},\
                {"color":"gray","italic":false,"text":"Note that the change to stats"},\
                {"color":"gray","italic":false,"text":"is comparatively less than"},\
                {"color":"gray","italic":false,"text":"the change given by Enlarge."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Chestplates, Wolf Armor, Horse"},\
                {"color":"white","italic":false,"text":"  Armor, Harnesses"},\
                [{"color":"gray","italic":false,"text":"Max Level: "},{"text":"4","color":"white"}],\
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
                {"color":"green","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"Is Treasure:"},\
                {"color":"green","italic":false,"text":"  Yes"},\
                {"color":"gray","italic":false,"text":"Traded:"},\
                {"color":"green","italic":false,"text":"  Yes, from Snowy"},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/regular/shrink/open","model":"aea:book/shrink_4"}'\
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