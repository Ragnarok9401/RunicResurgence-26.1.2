execute as @s unless data entity @s EnderItems[{Slot:15b}] run item replace entity @s enderchest.15 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/symbol",\
    minecraft:item_name={"text":"Symbol Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]