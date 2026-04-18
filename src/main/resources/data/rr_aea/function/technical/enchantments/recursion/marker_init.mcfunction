data modify entity @s data.aea.arrow_data set from entity @n[type=arrow,tag=!ArenRecursionChecked,nbt={inGround:false}]
data remove entity @s data.aea.arrow_data.UUID
data modify entity @s data.aea.arrow_data.pickup set value 2b
tag @n[type=arrow,tag=!ArenRecursionChecked,nbt={inGround:false}] add ArenRecursionChecked

tag @s add ArenRecursionMarkerSet