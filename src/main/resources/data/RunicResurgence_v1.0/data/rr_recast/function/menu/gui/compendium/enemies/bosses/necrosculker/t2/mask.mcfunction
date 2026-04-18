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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/enemies/bosses/necrosculker/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Elite Necrosculker","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Legend has it that the Sculk infection"},\
                {"color":"gray","italic":false,"text":"took over an ancient civilization long ago,"},\
                {"color":"gray","italic":false,"text":"but was sealed away by an unknown deity."},\
                {"color":"gray","italic":false,"text":"While this is all speculation by modern"},\
                {"color":"gray","italic":false,"text":"historians, it's not too unbelievable... after"},\
                {"color":"gray","italic":false,"text":"all, there seems to be no end to the number of"},\
                {"color":"gray","italic":false,"text":"Keepers that this monster can summon forth."},\
                ],\
            item_model:"rr_recast:boss/necrosculker/body/head_t2",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"How to Summon:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"This foe can be summoned by"},\
                [\
                    {"color":"gray","italic":false,"text":"crafting an "},\
                    {"color":"aqua","italic":false,"text":"Angered Dark Heart"},\
                ],\
                {"color":"gray","italic":false,"text":"and throwing it in the center"},\
                {"color":"gray","italic":false,"text":"of an Ancient Crypt structure."},\
                {"color":"gray","italic":false,"text":"The item must be thrown onto"},\
                {"color":"gray","italic":false,"text":"the Reinforced Deepslate block."},\
                {"color":"gray","italic":false,"text":"The item is consumed on summon."},\
            ],\
            item_model:"rr_recast:boss_item/necrosculker/angered_dark_heart",\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Notable Loot:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"33% - "},{"color":"white","text":"Deep Dark Core"}],\
                [{"color":"gray","italic":false,"text":"20% - "},{"color":"white","text":"Knowledge Fragment:"}],\
                [{"color":"white","italic":false,"text":"  Necrosculker, Chapter 1"}],\
                [{"color":"gray","italic":false,"text":"10% - "},{"color":"white","text":"Vitality Essence"}],\
                [{"color":"gray","italic":false,"text":"1.25% - "},{"color":"aqua","text":"Sculk Falchion"}],\
                [{"color":"gray","italic":false,"text":"1.25% - "},{"color":"aqua","text":"Sculk Bow"}],\
            ],\
            item_model:"minecraft:chest",\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:6b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Stats:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"Health: "},{"color":"white","text":"2000"}],\
                [{"color":"gray","italic":false,"text":"Entity Class: "},{"color":"white","text":"Undead"}],\
                [{"color":"gray","italic":false,"text":"Weak to Smite: "},{"color":"green","text":"Yes"}],\
                [{"color":"gray","italic":false,"text":"Speed: "},{"color":"white","text":"N/A"}],\
                [{"color":"gray","italic":false,"text":"Armor: "},{"color":"white","text":"N/A"}],\
            ],\
            item_model:"minecraft:paper",\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:24b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Phases:","color":"white"},\
            lore:[\
                {"color":"white","italic":false,"text":"Undead Calling II:"},\
                {"color":"gray","italic":false,"text":"  Calls forth two sets of either 4 or 3"},\
                {"color":"gray","italic":false,"text":"  Crypt Keepers with one of three specialties:"},\
                {"color":"gray","italic":false,"text":"  Warrior, Berserker, or Archer."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"white","italic":false,"text":"Tendril Cluster II:"},\
                {"color":"gray","italic":false,"text":"  Shoots several Sculk Tendril clusters at"},\
                {"color":"gray","italic":false,"text":"  random players. Each cluster creates nine"},\
                {"color":"gray","italic":false,"text":"  Sculk Tendrils when a player is reached."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"white","italic":false,"text":"Sculk Lasers:"},\
                {"color":"gray","italic":false,"text":"  Fires six individual Sculk Energy Lasers"},\
                {"color":"gray","italic":false,"text":"  in a circle around the arena. Half of them"},\
                {"color":"gray","italic":false,"text":"  are created on the ground and must be"},\
                {"color":"gray","italic":false,"text":"  jumped over, and half of them are created"},\
                {"color":"gray","italic":false,"text":"  higher and must be ducked beneath."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"white","italic":false,"text":"Weakened State:"},\
                {"color":"gray","italic":false,"text":"  After the lasers stop, a set of four"},\
                {"color":"gray","italic":false,"text":"  Root Pods are created somewhere in the arena."},\
                {"color":"gray","italic":false,"text":"  These are the primary Weakpoints for the boss,"},\
                {"color":"gray","italic":false,"text":"  and allow players to deal significant damage."},\
                {"color":"gray","italic":false,"text":""},\
                {"color":"aqua","italic":false,"text":"+ Tendril Waves:"},\
                {"color":"gray","italic":false,"text":"  Once its strength is fully regained, the"},\
                {"color":"gray","italic":false,"text":"  Necrosculker will create several lines or"},\
                {"color":"gray","italic":false,"text":"  rings of Sculk Tendrils. Listen for the sound"},\
                {"color":"gray","italic":false,"text":"  cues to figure out which ones are coming for"},\
                {"color":"gray","italic":false,"text":"  you."},\
            ],\
            item_model:"minecraft:iron_sword",\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:tool":{},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"enemies/bosses/necrosculker/t1/open","model":"rr_recast:boss/necrosculker/body/head_t1"}'\
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
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_4",\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]
#
    #{\
    #    Slot:15b,\
    #    id:"minecraft:music_disc_cat",\
    #    "components":\
    #    {\
    #        "minecraft:item_name":{"text":"Go to Havenite Meteor Page","color":"white"},\
    #        lore:[\
    #            {"color":"gray","italic":false,"text":"Click to go to the Havenite Meteor page!"}\
    #        ],\
    #        item_model:"rr_recast:havenite/havenite_meteor",\
    #        "!minecraft:jukebox_playable":{},\
    #        "minecraft:custom_data":\
    #            {\
    #                RunicMenuItem:\
    #                {\
    #                    command:'function rr_recast:menu/gui/compendium/blocks_and_items/blocks/details/havenite_meteorite/open {"page":"blocks_and_items/items/materials/rare_havenite_shard/open","model":"rr_recast:havenite/rare_havenite_shard"}'\
    #                }\
    #            }\
    #    }\
    #},