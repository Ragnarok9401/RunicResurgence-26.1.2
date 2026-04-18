execute store result entity @s data.Pos.X float 0.1 run random value -30..30
execute store result entity @s data.Pos.Z float 0.1 run random value -30..30
execute store result entity @s data.Pos.rotation_start float 0.1 run random value 0..3599
execute store result entity @s data.Pos.rotation_end float 0.1 run random value -10..10

function rr_recast:boss/necrosculker_main/necrosculker_nightmare/summon_aura_hand with entity @s data.Pos