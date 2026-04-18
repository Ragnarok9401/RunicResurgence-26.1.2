execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_reaching] run data modify entity @s transformation.translation[1] set value -1.0
$execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_reaching] run data modify entity @s transformation.left_rotation[1] set value $(rotation_end)
execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_reaching] run tag @s add rr.aura_hand_retreating
execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_reaching,tag=rr.aura_hand_retreating] run tag @s remove rr.aura_hand_reaching

execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_setup] run data modify entity @s transformation.translation[1] set value 0.75
$execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_setup] run data modify entity @s transformation.left_rotation[1] set value $(rotation_end)
execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_setup] run tag @s add rr.aura_hand_reaching
execute as @n[type=item_display,distance=..4,tag=rr.aura_hand_setup,tag=rr.aura_hand_reaching] run tag @s remove rr.aura_hand_setup

$summon item_display ~$(X) ~0.125 ~$(Z) {Tags:["rr.boss.ns_nightmare.ticking","rr.necrosculker.aura_hand","rr.boss.ns_nightmare.siphon_aura","rr.aura_hand_setup"],item:{id:"minecraft:sculk",count:1,components:{"minecraft:item_model":"rr_recast:boss/necrosculker/attacks/siphon_hand"}},item_display:"head",transformation:{scale:[1.0,1.0,1.0],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],translation:[0.0,-1.0,0.0]},start_interpolation:-1,interpolation_duration:10,Rotation:[$(rotation_start),0]}