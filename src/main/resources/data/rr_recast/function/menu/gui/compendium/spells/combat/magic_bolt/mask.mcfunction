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
            "minecraft:item_name":{"text":"Arcane Bolt","color":"light_purple"},\
            lore:[\
                {"color":"gray","italic":false,"text":"A small burst of condensed"},\
                {"color":"gray","italic":false,"text":"Arcane energy. Not incredibly"},\
                {"color":"gray","italic":false,"text":"strong, but very malleable"},\
                {"color":"gray","italic":false,"text":"and quick to use."},\
            ],\
            item_model:"rr_recast:spell/icon/arcane_bolt",\
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
                [{"color":"gray","italic":false,"text":"Mana Cost: "},{"color":"light_purple","text":"15"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Damage: "},{"color":"red","text":"4"}],\
                [{"color":"gray","italic":false,"text":"Damage Radius: "},{"color":"red","text":"3 Blocks"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Lifetime: "},{"color":"yellow","text":"2.5 Seconds"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Speed: "},{"color":"green","text":"10 Blocks/Sec"}],\
                [{"color":"gray","italic":false,"text":"Max Speed: "},{"color":"green","text":"50 Blocks/Sec"}],\
                [{"color":"gray","italic":false,"text":"Min Speed: "},{"color":"green","text":"-50 Blocks/Sec"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Windup: "},{"color":"aqua","text":"60 Ticks"}],\
                [{"color":"gray","italic":false,"text":"Cooldown: "},{"color":"dark_aqua","text":"40 Ticks"}],\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Damage Randomness: "},{"color":"gold","italic":false,"text":"None"}],\
                [{"color":"gray","italic":false,"text":"Lifetime Randomness: "},{"color":"gold","italic":false,"text":"None"}],\
                [{"color":"gray","italic":false,"text":"Angle Randomness: "},{"color":"gold","italic":false,"text":"None"}],\
                [{"color":"gray","italic":false,"text":"Speed Randomness: "},{"color":"gold","italic":false,"text":"None"}],\
            ],\
            "minecraft:item_model":"minecraft:paper",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
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
                {"text":"9 ","color":"#FF0000"},\
                {"text":"2 ","color":"#FC6600"},\
                {"text":"3 ","color":"#F9CC00"},\
                {"text":"4 ","color":"#CBFF00"},\
                {"text":"7","color":"#1AFF00"},\
                {"color":"light_purple","text":"]"}],\
                {"color":"gray","italic":false,"text":" "},\
                {"color":"gray","italic":false,"text":"Ring Visualization: "},\
                {"color":"gray","italic":false,"text":"        x"},\
                [{"color":"gray","italic":false,"text":"  x          "},{"color":"#FC6600","text":"2"}],\
                {"color":"gray","text":""},\
                [{"color":"#1AFF00","italic":false,"text":"7      "},{"color":"#FF0000","text":"9       "},{"text":"3","color":"#F9CC00"}],\
                {"color":"gray","text":""},\
                [{"color":"gray","italic":false,"text":"  x          "},{"color":"#CBFF00","text":"4"}],\
                {"color":"gray","italic":false,"text":"        x"},\
                {"color":"gray","italic":false,"text":" "},\
                [{"color":"gray","italic":false,"text":"Spell Tier: "},{"color":"aqua","text":"1"}],\
                {"color":"gray","italic":false,"text":"Spell Element:"},\
                {"color":"light_purple","italic":false,"text":"  ⸘ Arcane"},\
                {"color":"gray","italic":false,"text":"Spell Type:"},\
                {"color":"white","italic":false,"text":"  Combat"},\
                {"color":"gray","italic":false,"text":"Spell Subtype:"},\
                {"color":"white","italic":false,"text":"  Attack"},\
                {"color":"gray","italic":false,"text":"Spell Class:"},\
                {"color":"white","italic":false,"text":"  Projectile"},\
            ],\
            "minecraft:item_model":"rr_recast:tablet/basic/runic_tablet_basic",\
            "!minecraft:jukebox_playable":{},\
            "!minecraft:attribute_modifiers":{},\
            "!minecraft:tool":{},\
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
                [{"color":"gray","italic":false,"text":"- Damage"}],\
                [{"color":"gray","italic":false,"text":"- Damage Radius"}],\
                [{"color":"gray","italic":false,"text":"- Lifetime"}],\
                [{"color":"gray","italic":false,"text":"- Speed"}],\
                [{"color":"gray","italic":false,"text":"- Windup"}],\
                [{"color":"gray","italic":false,"text":"- Cooldown"}],\
                [{"color":"gray","italic":false,"text":"- Randomness"}],\
                [{"color":"gray","italic":false,"text":"- Acceleration"}],\
                [{"color":"gray","italic":false,"text":"- Projectile Count"}],\
                [{"color":"gray","italic":false,"text":"- Shot Delay"}],\
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
                    command:'function rr_recast:menu/gui/compendium/home_with_return/open {"page":"spells/combat/magic_bolt/open","model":"rr_recast:spell/icon/arcane_bolt"}'\
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