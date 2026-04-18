execute as @s unless data entity @s EnderItems[{Slot:16b}] run item replace entity @s enderchest.16 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/focus",\
    minecraft:item_name={"text":"Focus Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]