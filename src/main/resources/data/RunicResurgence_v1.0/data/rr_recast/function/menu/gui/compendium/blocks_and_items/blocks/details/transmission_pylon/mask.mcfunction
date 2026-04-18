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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/blocks/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Transmission Pylon","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Imbued with Astral energy,"},\
                {"color":"gray","italic":false,"text":"this small obelisk allows"},\
                {"color":"gray","italic":false,"text":"long-distance travel in one"},\
                {"color":"gray","italic":false,"text":"direction."},\
                {"color":"gray","italic":false,"text":" "},\
                {"color":"gray","italic":false,"text":"In order to place it, the item"},\
                {"color":"gray","italic":false,"text":"must be thrown on the ground."},\
                {"color":"gray","italic":false,"text":"There must be an obsidian below,"},\
                {"color":"gray","italic":false,"text":"crying obsidian on the sides of"},\
                {"color":"gray","italic":false,"text":"the obsidian, and amethyst blocks"},\
                {"color":"gray","italic":false,"text":"on the sides of the crying"},\
                {"color":"gray","italic":false,"text":"obsidian."}\
                ],\
            item_model:"rr_recast:block/transmission_pylon/transmission_pylon_inactive",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:6b,\
        id:"minecraft:wooden_pickaxe",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Removal","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"How to remove:"},\
                {"color":"gray","italic":false,"text":"Right-click the slot on"},\
                {"color":"gray","italic":false,"text":"the top of the block while"},\
                {"color":"gray","italic":false,"text":"it is empty."},\
            ],\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:16b,\
        id:"minecraft:anvil",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Nexus Slot","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This block must be given"},\
                {"color":"gray","italic":false,"text":"a Transmission Nexus to"},\
                {"color":"gray","italic":false,"text":"function. This Nexus will"},\
                {"color":"gray","italic":false,"text":"display either the coordinates"},\
                {"color":"gray","italic":false,"text":"saved, or if the Nexus is"},\
                {"color":"gray","italic":false,"text":"renamed in an anvil, it will"},\
                {"color":"gray","italic":false,"text":"display that name instead."},\
                {"color":"gray","italic":false,"text":"You must click this slot with"},\
                {"color":"gray","italic":false,"text":"Ender Dust to teleport to the"},\
                {"color":"gray","italic":false,"text":"location saved on the Nexus."},\
            ],\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:24b,\
        id:"minecraft:music_disc_cat",\
        "components":{\
            "minecraft:item_name":{"text":"Interdimensional Travel","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"To teleport to a location in"},\
                {"color":"gray","italic":false,"text":"the Nether, four Gilded Blackstone"},\
                {"color":"gray","italic":false,"text":"must be placed two blocks away"},\
                {"color":"gray","italic":false,"text":"from the Pylon on the same Y-level."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"gray","italic":false,"text":"To teleport to a location in"},\
                {"color":"gray","italic":false,"text":"the End, four Purpur Pillars"},\
                {"color":"gray","italic":false,"text":"must be placed one block away"},\
                {"color":"gray","italic":false,"text":"from the Pylon diagonally and"},\
                {"color":"gray","italic":false,"text":"on the same Y-level."}\
            ],\
            "!minecraft:jukebox_playable":{},\
            item_model:"minecraft:end_portal_frame",\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:8b,\
        id:"minecraft:book",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Back To Home Page","color":"white"},\
            item_model:"rr_recast:book/runic_compendium",\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:\
                {\
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/blocks/details/transmission_pylon/open","model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "rr_recast:havenite/havenite_crystal"\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "minecraft:end_crystal"\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "rr_recast:havenite/havenite_crystal"\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "rr_recast:generic/astral_essence"\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "minecraft:lodestone"\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "rr_recast:generic/astral_essence"\
        }\
    },\
    {\
        Slot:19b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "minecraft:ender_pearl"\
        }\
    },\
    {\
        Slot:20b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "minecraft:respawn_anchor"\
        }\
    },\
    {\
        Slot:21b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "minecraft:ender_pearl"\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Recipe Details"},\
            lore:\
            [\
                {"text":"Required Station:","color":"gray","italic":false},\
                {"text":"    Runic Manipulation Table","color":"white","italic":false},\
                {"text":"Craft Time:","color":"gray","italic":false},\
                {"text":"    Instant","color":"white","italic":false},\
                [\
                    {"text":"Crafted Amount: ","color":"gray","italic":false},\
                    {"text":"1","color":"white"}\
                ]\
            ],\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:item_model": "rr_recast:block/runic_table/runic_table_inactive"\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_3_recipe",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]