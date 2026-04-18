execute as @s unless data entity @s EnderItems[{Slot:25b}] run item replace entity @s enderchest.25 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/companion",\
    minecraft:item_name={"text":"Companion Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]