execute as @s unless data entity @s EnderItems[{Slot:8b}] run item replace entity @s enderchest.8 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/relic",\
    minecraft:item_name={"text":"Relic Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]