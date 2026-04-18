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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/other/enchantments/blessing/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Reverberation","color":"light_purple"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A booming voice!"},\
                {"color":"gray","italic":false,"text":"Reverberation allows Echo clouds"},\
                {"color":"gray","italic":false,"text":"to deal a percentage of your total"},\
                {"color":"gray","italic":false,"text":"damage rather than a pre-set amount."},\
                {"color":"gray","italic":false,"text":"The cloud will also remain stationary."},\
            ],\
            item_model:"minecraft:enchanted_book",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:stored_enchantments": {"rr_aea:reverberation":3},\
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
                {"color":"gray","italic":false,"text":"Reverberation allows an Echo"},\
                {"color":"gray","italic":false,"text":"cloud to deal 8% of your total"},\
                {"color":"gray","italic":false,"text":"damage per level, up to 24% at"},\
                {"color":"gray","italic":false,"text":"level 3. If this percentage of total"},\
                {"color":"gray","italic":false,"text":"damage is less than what a normal"},\
                {"color":"gray","italic":false,"text":"Echo cloud would deal per hit, then"},\
                {"color":"gray","italic":false,"text":"the Echo cloud will be unaffected."},\
                {"color":"gray","italic":false,"text":"Echo clouds spawned with Reverberation"},\
                {"color":"gray","italic":false,"text":"will also stay where they are spawned."},\
                {"color":"gray","italic":false,"text":"Applicable on: "},\
                {"color":"white","italic":false,"text":"  Swords, Axes"},\
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
                {"color":"gray","italic":false,"text":"Blessings may only be obtained"},\
                {"color":"gray","italic":false,"text":"through the Necrosculker Boss,"},\
                {"color":"gray","italic":false,"text":"tiers 2 and above. The chance"},\
                {"color":"gray","italic":false,"text":"to receive one is higher with"},\
                {"color":"gray","italic":false,"text":"harder tiers, up to 75% for"},\
                {"color":"gray","italic":false,"text":"Tier 4."},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"other/enchantments/blessing/reverberation/open","model":"aea:book/reverberation_blessing_3"}'\
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