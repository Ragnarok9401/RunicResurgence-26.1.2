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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Bow","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A modified version of the Sculk"},\
                {"color":"gray","italic":false,"text":"Bow, far more attuned to the"},\
                {"color":"gray","italic":false,"text":"Sculk energy infused with it. It"},\
                {"color":"gray","italic":false,"text":"bolsters a powerful strand and"},\
                {"color":"gray","italic":false,"text":"Tenebrium limbs."},\
                ],\
            item_model:"rr_recast:equipment/weapon/bow/tenebrium_bow",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
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
                ],\
                {"text":"Enchantments Carry Over:","color":"gray","italic":false},\
                {"text":"    Yes","color":"green","italic":false},\
            ],\
            item_model:"rr_recast:block/runic_table/runic_table_inactive",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:15b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Base Stats:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"Base Arrow Speed: "},{"text":"135%","color":"white"}],\
                [{"color":"gray","italic":false,"text":"Durability: "},{"text":"Unbreakable","color":"aqua"}],\
            ],\
            "!minecraft:attribute_modifiers":{},\
            item_model:"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:crying_obsidian",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:netherite_ingot",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"minecraft:crying_obsidian",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:generic/tenebrium_ingot",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:equipment/weapon/bow/deep_dark_bow",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:generic/tenebrium_ingot",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:19b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:generic/sculk_essence",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:20b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:mob_drop/deep_dark_crest",\
            "!minecraft:jukebox_playable":{},\
        }\
    },\
    {\
        Slot:21b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            item_model:"rr_recast:generic/sculk_essence",\
            "!minecraft:jukebox_playable":{},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"blocks_and_items/items/equipment/weapon/bow/tenebrium_bow/open","model":"rr_recast:equipment/weapon/bow/tenebrium_bow"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}},\
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_1_recipe"\
        }\
    }\
]