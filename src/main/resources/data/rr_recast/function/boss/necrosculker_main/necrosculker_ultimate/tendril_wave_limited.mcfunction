# Randomize which Tendril Wave type is created
# X 1 = Single Line, sweeps across arena, has a random Angle, Speed and Gap
# - 2 = Double Line, pushes from boss outward, has a random Angle and Speed
# - 3 = Outward Ring, pushes out from boss, has a random Speed
# X 4 = Inward Ring, pulls from arena edge to boss, has a random Speed and Gap At 1440, a Tendril Wave Marker will spawn that will control randomized waves of Sculk Tendrils that appear and move in different patterns.
# - 5 = Spiral pattern that moves from wall to boss (exclusive to Tier 3+)
# - 6 = Spiral pattern that moves from boss to wall (exclusive to Tier 3+)
# + 7 X 8 = One or two points chosen randomly in the arena (if one chosen, one random position, if two, then on opposite sides of arena)
#           These points are hit by super large tendrils that deal incredible damage, then summons a few spirals that emanate from that (those) position(s)
#           Needs Random Speed and Position (X and Y)

#region
execute store result score @s rr.math.A run random value 2..6
# Randomize Angle (if needed)
execute store result entity @s[scores={rr.math.A=1..2}] data.rr_recast.tendril_wave.angle int 1 run random value 0..359
# Randomize Speed (in Blocks/Tick, divide number by 1000)
execute store result entity @s data.rr_recast.tendril_wave.speed float 0.001 run random value 150..400
# Randomize Gap Position (if needed, should limit to # of Markers - 4)
execute store result entity @s[scores={rr.math.A=1..2}] data.rr_recast.tendril_wave.gap int 1 run random value 16..22

# If using Spiral form, use tendril_wave.angle as a rotation amount instead
execute store result entity @s[scores={rr.math.A=4..5}] data.rr_recast.tendril_wave.angle float 0.1 run random value 20..30
execute store result entity @s[scores={rr.math.A=4..5}] data.rr_recast.tendril_wave.spawn_angle int 1 run random value 0..359

# If Super Spike is selected, get x and z values depending on how many Supers will be summoned
execute store result entity @s[scores={rr.math.A=7..8}] data.rr_recast.tendril_wave.speed float 0.001 run random value 200..300
execute store result entity @s[scores={rr.math.A=7..8}] data.rr_recast.tendril_wave.x float 0.1 run random value -140..140
execute store result entity @s[scores={rr.math.A=7..8}] data.rr_recast.tendril_wave.z float 0.1 run random value -140..140

execute if score @s rr.math.A matches 2 at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/double_line with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 3 at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/ring_out with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 4 at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/spiral_out with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 5 at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/spiral_in with entity @s data.rr_recast.tendril_wave
execute if score @s rr.math.A matches 6 at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave/super_spike with entity @s data.rr_recast.tendril_wave