# Randomize which Tendril Wave type is created
# - 1 = Single Line, sweeps across arena, has a random Angle, Speed and Gap
# - 2 = Double Line, pushes from boss outward, has a random Angle and Speed
# - 3 = Outward Ring, pushes out from boss, has a random Speed
# - 4 = Inward Ring, pulls from arena edge to boss, has a random Speed and Gap
execute store result score @s rr.math.A run random value 1..4
# Randomize Angle (if needed)
execute store result entity @s[scores={rr.math.A=1..2}] data.rr_recast.tendril_wave.angle int 1 run random value 0..359
# Randomize Speed (in Blocks/Tick, divide number by 1000)
execute store result entity @s data.rr_recast.tendril_wave.speed float 0.001 run random value 125..325
# Randomize Gap Position (if needed, should limit to # of Markers - 4)
execute store result entity @s[scores={rr.math.A=1..2}] data.rr_recast.tendril_wave.gap int 1 run random value 16..22
# Gap Positions for Ring In should be calculated differently for continuity
execute store result score @s[scores={rr.math.A=4}] rr.math.index run random value 1..32
execute store result entity @s[scores={rr.math.A=4}] data.rr_recast.tendril_wave.gap1 int 1 run scoreboard players get @s rr.math.index
execute as @s[scores={rr.math.A=4}] at @s run scoreboard players add @s rr.math.index 1
execute as @s[scores={rr.math.A=4,rr.math.index=33}] at @s run scoreboard players set @s rr.math.index 1
execute store result entity @s[scores={rr.math.A=4}] data.rr_recast.tendril_wave.gap2 int 1 run scoreboard players get @s rr.math.index
execute as @s[scores={rr.math.A=4}] at @s run scoreboard players add @s rr.math.index 1
execute as @s[scores={rr.math.A=4,rr.math.index=33}] at @s run scoreboard players set @s rr.math.index 1
execute store result entity @s[scores={rr.math.A=4}] data.rr_recast.tendril_wave.gap3 int 1 run scoreboard players get @s rr.math.index
execute as @s[scores={rr.math.A=4}] at @s run scoreboard players add @s rr.math.index 1
execute as @s[scores={rr.math.A=4,rr.math.index=33}] at @s run scoreboard players set @s rr.math.index 1
execute store result entity @s[scores={rr.math.A=4}] data.rr_recast.tendril_wave.gap4 int 1 run scoreboard players get @s rr.math.index

execute if score @s rr.math.A matches 1 at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/tendril_wave/single_line with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 2 at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/tendril_wave/double_line with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 3 at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/tendril_wave/ring_out with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 4 at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/tendril_wave/ring_in with entity @s data.rr_recast.tendril_wave