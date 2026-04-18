$execute as @s[scores={rr.spell.Windup=$(sound_1_timing)}] run playsound $(sound_1)
$execute if data storage rr_recast:global spells.magic_bolt.windup_fx.sound_2 as @s[scores={rr.spell.Windup=$(sound_2_timing)}] run playsound $(sound_2)
#$execute if data storage rr_recast:global spells.magic_bolt.windup_fx.sound_3 as @s[scores={rr.spell.Windup=$(sound_3_timing)}] run playsound $(sound_3)

$execute as @s[scores={rr.spell.Windup=$(particle_1_timing)}] run particle $(particle_1)
#$execute if data storage rr_recast:global spells.magic_bolt.windup_fx.particle_2 as @s[scores={rr.spell.Windup=$(particle_2_timing)}] run particle $(particle_2)
#$execute if data storage rr_recast:global spells.magic_bolt.windup_fx.particle_3 as @s[scores={rr.spell.Windup=$(particle_3_timing)}] run particle $(particle_3)