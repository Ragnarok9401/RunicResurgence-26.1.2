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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/open"}\
            }\
        }\
    },\
    {\
        Slot:1b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Minor Tincture of Healing","color":"white"},\
            item_model:"sbhp:tincture/health",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tincture/healing/minor/open"}\
            }\
        }\
    },\
    {\
        Slot:2b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Modest Tincture of Healing","color":"white"},\
            item_model:"sbhp:tincture/health_2",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tincture/healing/modest/open"}\
            }\
        }\
    },\
    {\
        Slot:3b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Moderate Tincture of Healing","color":"white"},\
            item_model:"sbhp:tincture/health_3",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tincture/healing/moderate/open"}\
            }\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Major Tincture of Healing","color":"white"},\
            item_model:"sbhp:tincture/health_4",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tincture/healing/major/open"}\
            }\
        }\
    },\
    {\
        Slot:5b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Massive Tincture of Healing","color":"white"},\
            item_model:"sbhp:tincture/health_5",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tincture/healing/massive/open"}\
            }\
        }\
    },\
    {\
        Slot:6b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Basic Runic Tablet","color":"white"},\
            item_model:"rr_recast:tablet/basic/runic_tablet_basic",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tablet/basic_runic_tablet/open"}\
            }\
        }\
    },\
    {\
        Slot:7b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Enriched Runic Tablet","color":"white"},\
            item_model:"rr_recast:tablet/enriched/runic_tablet_enriched",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tablet/enriched_runic_tablet/open"}\
            }\
        }\
    },\
    {\
        Slot:10b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Soulbound Runic Tablet","color":"white"},\
            item_model:"rr_recast:tablet/soul/runic_tablet_soul",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tablet/soul_runic_tablet/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Grand Runic Tablet","color":"white"},\
            item_model:"rr_recast:tablet/master/runic_tablet_master",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/tablet/grand_runic_tablet/open"}\
            }\
        }\
    },\
    {\
        Slot:12b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Transmission Nexus","color":"white"},\
            item_model:"rr_recast:generic/transmission_nexus",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/nexus/transmission_nexus/open"}\
            }\
        }\
    },\
    {\
        Slot:13b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Sculk Falchion","color":"white"},\
            item_model:"rr_recast:equipment/weapon/falchion/sculk_falchion",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/weapon/falchion/sculk_falchion/open"}\
            }\
        }\
    },\
    {\
        Slot:14b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Sculk Bow","color":"white"},\
            item_model:"rr_recast:equipment/weapon/bow/deep_dark_bow",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/weapon/bow/sculk_bow/open"}\
            }\
        }\
    },\
    {\
        Slot:15b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Falchion","color":"white"},\
            item_model:"rr_recast:equipment/weapon/falchion/tenebrium_falchion",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/weapon/falchion/tenebrium_falchion/open"}\
            }\
        }\
    },\
    {\
        Slot:16b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Bow","color":"white"},\
            item_model:"rr_recast:equipment/weapon/bow/tenebrium_bow",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/weapon/bow/tenebrium_bow/open"}\
            }\
        }\
    },\
    {\
        Slot:19b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Helmet","color":"white"},\
            item_model:"rr_recast:equipment/armor/sculk_plate/sculk_plate_helmet",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/armor/tenebrium/tenebrium_helmet/open"}\
            }\
        }\
    },\
    {\
        Slot:20b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Chestplate","color":"white"},\
            item_model:"rr_recast:equipment/armor/sculk_plate/sculk_plate_chestplate",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/armor/tenebrium/tenebrium_chestplate/open"}\
            }\
        }\
    },\
    {\
        Slot:21b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Leggings","color":"white"},\
            item_model:"rr_recast:equipment/armor/sculk_plate/sculk_plate_leggings",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/armor/tenebrium/tenebrium_leggings/open"}\
            }\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Tenebrium Boots","color":"white"},\
            item_model:"rr_recast:equipment/armor/sculk_plate/sculk_plate_boots",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/blocks_and_items/items/equipment/armor/tenebrium/tenebrium_boots/open"}\
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