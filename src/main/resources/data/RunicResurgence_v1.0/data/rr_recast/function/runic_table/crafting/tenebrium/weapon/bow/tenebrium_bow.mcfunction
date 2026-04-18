execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data modify entity @s data.rr_recast.enchantment_transfer set from entity @s item.components."minecraft:enchantments"
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run item replace entity @s contents with bow[item_name={\
        "translate":"item.rr_recast.tenebrium_bow",\
        "fallback":"Tenebrium Bow",\
        "color":"#3367B6",\
        "italic":false\
    },\
    lore=[\
        {"text":""},\
        {\
            "translate":"text.rr_recast.bow.when_shot",\
            "fallback":"When Shot:",\
            "color":"gray",\
            "italic":false\
        },\
        {\
            "translate":"text.rr_recast.tenebrium_bow.arrow_speed",\
            "fallback":"+35%% Arrow Speed",\
            "color":"dark_green",\
            "italic":false\
        }\
    ],\
    item_model="rr_recast:equipment/weapon/bow/tenebrium_bow",\
    custom_data={\
      "rr.custom_bow":true,\
      "rr.sculkshot":true,\
      "rr.bow.arrow_speed_35":true\
    },\
    unbreakable={},\
    damage_resistant={types:"#minecraft:is_fire"}\
]
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data modify entity @s item.components."minecraft:enchantments" set from entity @s data.rr_recast.enchantment_transfer
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run data remove entity @s data.rr_recast.enchantment_transfer
execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!rr.runic_table.item.5,tag=rr.runic_table.item] run kill @s

playsound minecraft:block.anvil.land block @a[distance=..20] ~ ~ ~ 0.6 1.25 0