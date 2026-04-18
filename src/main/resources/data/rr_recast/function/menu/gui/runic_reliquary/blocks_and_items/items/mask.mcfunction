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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/open"}\
            }\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Materials","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Items obtained one way or"},\
                {"color":"gray","italic":false,"text":"  another that are meant"},\
                {"color":"gray","italic":false,"text":"  for makingsomething else"},\
                ],\
            item_model:"rr_recast:havenite/havenite_shard",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/materials/open"}\
            }\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Equipment and Tools","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Items such as armor, swords,"},\
                {"color":"gray","italic":false,"text":"  bows, pickaxes, and some"},\
                {"color":"gray","italic":false,"text":"  books"},\
                ],\
            item_model:"rr_recast:equipment/weapon/falchion/sculk_falchion",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/open"}\
            }\
        }\
    },\
    {\
        Slot:14b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Boss Summons","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Items used to summon the"},\
                {"color":"gray","italic":false,"text":"  most powerful foes in"},\
                {"color":"gray","italic":false,"text":"  Runic Resurgence"},\
                ],\
            item_model:"rr_recast:boss_item/necrosculker/suspicious_dark_heart",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/boss_items/open"}\
            }\
        }\
    },\
    {\
        Slot:16b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Other","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Some items that don't really fit"},\
                {"color":"gray","italic":false,"text":"  into the other categories"},\
                {"color":"gray","italic":false,"text":"  but are still worth noting"},\
                ],\
            item_model:"minecraft:bundle",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/other/open"}\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/items_menu",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]