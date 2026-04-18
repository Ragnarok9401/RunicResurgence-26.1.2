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
            "minecraft:item_name":{"text":"Arcana Altar","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A massive upgrade to the Enchanting"},\
                {"color":"gray","italic":false,"text":"Table. This Altar allows you to select"},\
                {"color":"gray","italic":false,"text":"enchantments and what level you'd like"},\
                {"color":"gray","italic":false,"text":"them to be. Comes with a higher XP cost,"},\
                {"color":"gray","italic":false,"text":"but its versatility cannot be understated."},\
                {"color":"gray","italic":false,"text":" "},\
                {"color":"gray","italic":false,"text":"In order to place it, the item"},\
                {"color":"gray","italic":false,"text":"must be thrown on a Glowstone Block"}\
                ],\
            item_model:"aea:block/enchanting_altar",\
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
                {"color":"gray","italic":false,"text":"Right-click the top of the block"},\
                {"color":"gray","italic":false,"text":"while sneaking with any Pickaxe. The"},\
                {"color":"gray","italic":false,"text":"altar may not have an item inserted."},\
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
            "minecraft:item_name":{"text":"Powering the Table","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Much like a plain Enchanting Table,"},\
                {"color":"gray","italic":false,"text":"the Arcana Altar must be powered with"},\
                {"color":"gray","italic":false,"text":"Bookshelves. However, they must be placed"},\
                {"color":"gray","italic":false,"text":"three blocks away from the Altar instead of"},\
                {"color":"gray","italic":false,"text":"two. But, unlike the Enchanting Table, any"},\
                {"color":"gray","italic":false,"text":"blocks may be placed between the Altar and the"},\
                {"color":"gray","italic":false,"text":"bookshleves and they will still be detected."},\
                {"color":"gray","italic":false,"text":"Bookshelves may also be placed up to three blocks"},\
                {"color":"gray","italic":false,"text":"above the Altar. The max amount of Bookshelves is"},\
                {"color":"gray","italic":false,"text":"64, and the Altar will show how many are detected."},\
            ],\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:24b,\
        id:"minecraft:music_disc_cat",\
        "components":{\
            "minecraft:item_name":{"text":"Item Cost","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Along with XP, the Arcana Altar"},\
                [{"color":"gray","italic":false,"text":"requires "},{"text":"Arcane Dust","color":"light_purple","obfuscated":true},{"color":"gray","italic":false,"obfuscated":false,"text":" to complete"}],\
                {"color":"gray","italic":false,"text":"enchantments. The altar requires a"},\
                {"color":"gray","italic":false,"text":"number of these equivalent to the"},\
                {"color":"gray","italic":false,"text":"difference in levels applied * 4."},\
                {"color":"gray","italic":false,"text":"So, for example, changing Sharpness"},\
                {"color":"gray","italic":false,"text":"from level 5 to level 8 would cost"},\
                {"color":"gray","italic":false,"text":"(8-5)*4 dust, or 12 in total. This"},\
                {"color":"gray","italic":false,"text":"is also required for making enchantment"},\
                {"color":"gray","italic":false,"text":"levels go down."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"red","italic":false,"text":"IMPORTANT NOTE:"},\
                {"color":"gray","italic":false,"text":"  This is not yet implemented."},\
                {"color":"gray","italic":false,"text":"  There is no item cost, but"},\
                {"color":"gray","italic":false,"text":"  that is coming soon."}\
            ],\
            "!minecraft:jukebox_playable":{},\
            item_model:"rr_recast:generic/astral_essence",\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/blocks/details/arcana_altar/open","model":"aea:block/enchanting_altar"}'\
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
            "minecraft:item_model": "minecraft:lapis_block"\
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
            "minecraft:item_model": "minecraft:experience_bottle"\
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
            "minecraft:item_model": "minecraft:lapis_block"\
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
            "minecraft:item_model": "minecraft:amethyst_cluster"\
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
            "minecraft:item_model": "minecraft:enchanting_table"\
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
            "minecraft:item_model": "minecraft:amethyst_cluster"\
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
            "minecraft:item_model": "minecraft:diamond_block"\
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
            "minecraft:item_model": "minecraft:netherite_scrap"\
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
            "minecraft:item_model": "minecraft:diamond_block"\
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
                {"text":"    Pick up Enchanting Table","color":"white","italic":false},\
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