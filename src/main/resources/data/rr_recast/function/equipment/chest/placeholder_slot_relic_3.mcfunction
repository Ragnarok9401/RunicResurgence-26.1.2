execute as @s unless data entity @s EnderItems[{Slot:26b}] run item replace entity @s enderchest.26 with \
music_disc_cat[\
    minecraft:item_model="rr_recast:equipment/placeholder/relic",\
    minecraft:item_name={"text":"Relic Slot","color":"gray","italic":false},\
    !minecraft:jukebox_playable,\
    minecraft:custom_data={rr.equipment.placeholder:1b}\
]