# At 1080, eight-and-a-half seconds after the boss is weakened, the boss will regain its strength and the roots will disappear. If the boss takes at least 1/4 of its total health in damage in the time that it was weakened, it will grow angered for a time, calling forth dozens of Massive Sculk Tendrils in set positions around it, with warning markers appearing a second before each tendril strikes up from the ground. This lasts for another 10 seconds, up until 1280.
#region
## Make the boss look up and "yell" with anger
execute as @s[scores={rr.system.BossTick=1180..1280},tag=RunicNSLookOther] at @s run execute as @e[tag=RunicNSHead,limit=2,sort=nearest] at @s run data modify entity @s transformation set value {translation:[0.0f,0.25f,1.25f],left_rotation:[-0.25f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}
execute as @s[scores={rr.system.BossTick=1200},tag=RunicNSLookOther] at @s run playsound minecraft:entity.warden.roar hostile @a[distance=..50] ~ ~ ~ 1.2 0.5 0

## Summon the Supermassive Sculk Tendrils in various places around the arena. Positions are randomly rolled and plugged into macro function
## 1200-1400 (10sec)
execute as @s[scores={rr.system.BossTick=1200..1500}] store result entity @s data.rr_recast.tendril_pos.X float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=1200..1500}] store result entity @s data.rr_recast.tendril_pos.Z float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=1200..1500}] run function rr_recast:boss/necrosculker_main/necrosculker/angered_tendril_summon with entity @s data.rr_recast.tendril_pos

## Reset the Head position of the boss and remove the LookOther tag
execute as @s[scores={rr.system.BossTick=1380..1400},tag=RunicNSLookOther] at @s run execute as @e[tag=RunicNSHead,limit=2,sort=nearest] at @s run data modify entity @s transformation set value {translation:[0.0f,0f,1.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}
execute as @s[scores={rr.system.BossTick=1400},tag=RunicNSLookOther] at @s run tag @s remove RunicNSLookOther