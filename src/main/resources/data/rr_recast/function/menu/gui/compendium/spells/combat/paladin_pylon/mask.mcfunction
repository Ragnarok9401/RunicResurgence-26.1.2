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
                RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/spells/combat/open"}\
            }\
        }\
    },\
    {\
        Slot:11b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Paladin's Pylon","color":"aqua"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Create a stationary aura of"},\
                {"color":"gray","italic":false,"text":"protection capable of absorbing"},\
                {"color":"gray","italic":false,"text":"damage from any source for"},\
                {"color":"gray","italic":false,"text":"a time. Has a limited health"},\
                {"color":"gray","italic":false,"text":"pool, and does not give any"},\
                {"color":"gray","italic":false,"text":"additional damage resistance."},\
            ],\
            item_model:"rr_recast:spell/icon/paladin_pylon",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":\
            {\
                RunicMenuItem:{empty:1b}\
            }\
        }\
    },\
    {\
        Slot:22b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Base Stats:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"Mana Cost: "},{"color":"light_purple","text":"60"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Pylon Health: "},{"color":"red","text":"250"}],\
                [{"color":"gray","italic":false,"text":"Pylon Radius: "},{"color":"red","text":"4 Blocks"}],\
                [{"color":"gray","italic":false,"text":"Max Radius: "},{"color":"red","text":"20 Blocks"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Lifetime: "},{"color":"yellow","text":"10 Seconds"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Speed: "},{"color":"green","text":"N/A"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Windup: "},{"color":"aqua","text":"120 Ticks"}],\
                [{"color":"gray","italic":false,"text":"Min Windup: "},{"color":"aqua","text":"40 Ticks"}],\
                [{"color":"gray","italic":false,"text":"Cooldown: "},{"color":"dark_aqua","text":"220 Ticks"}],\
                [{"color":"gray","italic":false,"text":"Min Cooldown: "},{"color":"dark_aqua","text":"100 Ticks"}],\
            ],\
            "minecraft:item_model":"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:4b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"General Spell Info:","color":"white"},\
            lore:[\
                {"color":"gray","italic":false,"text":"Casting Order: "},\
                [{"color":"light_purple","text":"  [","italic":false},\
                {"text":"5 ","color":"#FF0000"},\
                {"text":"4 ","color":"#FC6600"},\
                {"text":"2 ","color":"#F9CC00"},\
                {"text":"8 ","color":"#CBFF00"},\
                {"text":"6","color":"#1AFF00"},\
                {"color":"light_purple","text":"]"}],\
                {"color":"gray","italic":false,"text":" "},\
                {"color":"gray","italic":false,"text":"Ring Visualization: "},\
                {"color":"gray","italic":false,"text":"        x"},\
                [{"color":"#CBFF00","italic":false,"text":"  8          "},{"color":"#F9CC00","text":"2"}],\
                {"color":"gray","text":""},\
                {"color":"gray","italic":false,"text":"x      x       x"},\
                {"color":"gray","text":""},\
                [{"color":"#1AFF00","italic":false,"text":"  6          "},{"color":"#FC6600","text":"4"}],\
                {"color":"#FF0000","italic":false,"text":"        5"},\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Spell Tier: "},{"color":"aqua","text":"1"}],\
                {"color":"gray","italic":false,"text":"Spell Element:"},\
                {"color":"light_purple","italic":false,"text":"  ⸘ Arcane"},\
                {"color":"gray","italic":false,"text":"Spell Type:"},\
                {"color":"white","italic":false,"text":"  Combat"},\
                {"color":"gray","italic":false,"text":"Spell Subtype:"},\
                {"color":"white","italic":false,"text":"  Defense"},\
                {"color":"gray","italic":false,"text":"Spell Class:"},\
                {"color":"white","italic":false,"text":"  Aura"},\
            ],\
            "minecraft:item_model":"rr_recast:tablet/basic/runic_tablet_basic",\
            "!minecraft:jukebox_playable":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    },\
    {\
        Slot:15b,\
        id:"minecraft:music_disc_cat",\
        "components":\
        {\
            "minecraft:item_name":{"text":"Modifiable Stats:","color":"white"},\
            lore:[\
                [{"color":"gray","italic":false,"text":"- Mana Cost"}],\
                [{"color":"gray","italic":false,"text":"- Aura Health"}],\
                [{"color":"gray","italic":false,"text":"- Aura Radius"}],\
                [{"color":"gray","italic":false,"text":"- Lifetime"}],\
                [{"color":"gray","italic":false,"text":"- Windup"}],\
                [{"color":"gray","italic":false,"text":"- Cooldown"}],\
            ],\
            "minecraft:item_model":"minecraft:writable_book",\
            "!minecraft:jukebox_playable":{},\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"spells/combat/paladin_pylon/open","model":"rr_recast:spell/icon/paladin_pylon"}'\
                }\
            }\
        }\
    },\
    {\
        Slot:0b,\
        id:"minecraft:barrier",\
        "components":\
        {\
            "minecraft:item_model":"rr_recast:menu/compendium/item_details_3",\
            tooltip_display:{hide_tooltip:true},\
            "!minecraft:item_name":{},\
            "minecraft:custom_data":{RunicMenuItem:{empty:1b}}\
        }\
    }\
]