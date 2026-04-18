# At 0: no particles

# At 1->15: One Enchant Particle
execute as @s[scores={aea.math.A=1..},tag=ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 1 force @a[distance=..30]
execute as @s[scores={aea.math.A=1..15},tag=!ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 1 force @a[distance=..30]

# At 16->31: Two Enchant Particles
execute as @s[scores={aea.math.A=16..31},tag=!ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 2 force @a[distance=..30]

# At 32->47: Three Enchant Particles
execute as @s[scores={aea.math.A=32..47},tag=!ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 3 force @a[distance=..30]

# At 48->63: Four Enchant Particles
execute as @s[scores={aea.math.A=48..63},tag=!ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 4 force @a[distance=..30]

# At 64 and beyond: Five Enchant Particles
execute as @s[scores={aea.math.A=64..},tag=!ArenAEAInUse] at @s run particle enchant ~ ~2 ~ 0.125 0.125 0.125 1 5 force @a[distance=..30]