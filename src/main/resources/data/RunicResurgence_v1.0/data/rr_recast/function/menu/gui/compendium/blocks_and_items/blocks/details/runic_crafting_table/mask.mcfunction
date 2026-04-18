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
            "minecraft:item_name":{"text":"Runic Manipulation Table","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Nobody really knows how it"},\
                {"color":"gray","italic":false,"text":"works, but this advanced machine"},\
                {"color":"gray","italic":false,"text":"can more easily alter items"},\
                {"color":"gray","italic":false,"text":"with the help of the Havenite"},\
                {"color":"gray","italic":false,"text":"extracted from a meteor"},\
                {"color":"gray","italic":false,"text":" "},\
                {"color":"gray","italic":false,"text":"In order to place it, the item"},\
                {"color":"gray","italic":false,"text":"must be thrown on the ground"}\
                ],\
            item_model:"rr_recast:block/runic_table/runic_table_inactive",\
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
                {"color":"gray","italic":false,"text":"Right-click the Fuel Slot on"},\
                {"color":"gray","italic":false,"text":"the front of the placed block"},\
                {"color":"gray","italic":false,"text":"with any Pickaxe."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"red","italic":false,"text":"IMPORTANT NOTE:"},\
                {"color":"gray","italic":false,"text":"Any remaining charge on the"},\
                {"color":"gray","italic":false,"text":"table is lost on removal!"}\
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
            "minecraft:item_name":{"text":"Crafting Slots","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This block has 9 Crafting"},\
                {"color":"gray","italic":false,"text":"Slots on top of the block."},\
                {"color":"gray","italic":false,"text":"When powered, a particle"},\
                {"color":"gray","italic":false,"text":"will display for each empty"},\
                {"color":"gray","italic":false,"text":"slot. Click any slot to insert,"},\
                {"color":"gray","italic":false,"text":"replace, or remove any item."},\
                {"color":"gray","italic":false,"text":"If a valid recipe is found,"},\
                {"color":"gray","italic":false,"text":"a preview of the recipe's output"},\
                {"color":"gray","italic":false,"text":"is displayed. Click the preview"},\
                {"color":"gray","italic":false,"text":"item to finalize the craft."}\
            ],\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:24b,\
        id:"minecraft:music_disc_cat",\
        "components":{\
            "minecraft:item_name":{"text":"Fuel Slot","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This block has a Fuel Slot"},\
                {"color":"gray","italic":false,"text":"on the front. It can be seen"},\
                {"color":"gray","italic":false,"text":"as a small indent, and"},\
                {"color":"gray","italic":false,"text":"must be supplied with Havenite"},\
                {"color":"gray","italic":false,"text":"Meteor Chunks to power the"},\
                {"color":"gray","italic":false,"text":"table. Each Chunk adds 2 minutes"},\
                {"color":"gray","italic":false,"text":"of crafting time to the table."},\
                {"color":"gray","italic":false,"text":"Some recipes will take time to"},\
                {"color":"gray","italic":false,"text":"complete, so this will be"},\
                {"color":"gray","italic":false,"text":"important to remember."},\
                {"color":"gray","italic":false,"text":"Recipes that don't complete"},\
                {"color":"gray","italic":false,"text":"in time will be paused,"},\
                {"color":"gray","italic":false,"text":"but not cancelled."}\
            ],\
            "!minecraft:jukebox_playable":{},\
            item_model:"rr_recast:block/runic_table/runic_table_inactive",\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/blocks/details/runic_crafting_table/open","model":"rr_recast:block/runic_table/runic_table_inactive"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:amethyst_shard",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:raw_gold_block",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:amethyst_shard",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:glow_ink_sac",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:smithing_table",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:quartz",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:19b,\
        id:"minecraft:amethyst_shard",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:20b,\
        id:"minecraft:obsidian",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:21b,\
        id:"minecraft:amethyst_shard",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:crafting_table",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Recipe Details"},\
            lore:\
            [\
                {"text":"Required Station:","color":"gray","italic":false},\
                {"text":"    Crafting Table","color":"white","italic":false},\
                {"text":"Recipe Unlock:","color":"gray","italic":false},\
                {"text":"    Pick up Raw Gold","color":"white","italic":false},\
                [\
                    {"text":"Crafted Amount: ","color":"gray","italic":false},\
                    {"text":"1","color":"white"}\
                ]\
            ],\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
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