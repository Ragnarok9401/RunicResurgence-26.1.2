execute as @s unless data entity @s EnderItems[{Slot:6b}] run item replace entity @s enderchest.6 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/pendant",\
    minecraft:item_name={"text":"Pendant Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]