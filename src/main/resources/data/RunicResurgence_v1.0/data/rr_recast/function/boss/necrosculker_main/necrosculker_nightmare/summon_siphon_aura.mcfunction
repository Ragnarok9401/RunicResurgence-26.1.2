summon item_display ~ ~0.125 ~ {Tags:["rr.boss.ns_elite.ticking","rr.boss.ns_nightmare.siphon_aura","rr.necrosculker.siphon_aura_main"],item:{id:"minecraft:sculk",count:1,components:{"minecraft:item_model":"rr_recast:boss/necrosculker/attacks/siphon_aura"}},item_display:"head",transformation:{scale:[4.0f,4.0f,4.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.75f,0.0f]}}

playsound minecraft:entity.wither.death hostile @a[distance=..30] ~ ~0.125 ~ 0.8 1.125 0
playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..30] ~ ~0.125 ~ 0.8 1.125 0

kill @s