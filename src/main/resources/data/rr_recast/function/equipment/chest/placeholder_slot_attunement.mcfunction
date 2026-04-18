execute as @s unless data entity @s EnderItems[{Slot:7b}] run item replace entity @s enderchest.7 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/attunement",\
    minecraft:item_name={"text":"Attunement Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]