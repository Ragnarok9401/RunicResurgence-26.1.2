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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/open"}\
            }\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Foresight","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:foresight":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/foresight/open"}\
            }\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Pressure","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:pressure":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/pressure/open"}\
            }\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Recursion","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:recursion":3},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/recursion/open"}\
            }\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Downpour","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:downpour":3},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/downpour/open"}\
            }\
        }\
    },\
    {\
        Slot:5b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Boomstick","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:boomstick":3},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/boomstick/open"}\
            }\
        }\
    },\
    {\
        Slot:6b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Titanism","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:titanism":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/titanism/open"}\
            }\
        }\
    },\
    {\
        Slot:7b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Reverberation","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:reverberation":3},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/reverberation/open"}\
            }\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Wanderlust","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:wanderlust":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/wanderlust/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Bastion","color":"white"},\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:bastion":1},\
            tooltip_display: {hidden_components:["stored_enchantments"]},\
            "minecraft:enchantment_glint_override":true,\
            "minecraft:custom_data":\
            {\ 
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/bastion/open"}\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/item_list_default_first",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]