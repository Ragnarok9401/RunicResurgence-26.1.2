execute as @s[tag=!aea.player.held_titanism] at @s run particle crit ~ ~0.125 ~ 0.25 0.125 0.25 0.1 2 normal
execute as @s[tag=!aea.player.held_titanism] at @s run particle small_gust ~ ~0.125 ~ 0.25 0.125 0.25 0.1 2 normal
execute as @s[tag=!aea.player.held_titanism] at @s run playsound rr_recast:sfx.impact_1 player @a[distance=..12] ~ ~1 ~ 0.3 0.8 0
execute as @s[tag=!aea.player.held_titanism] at @s run playsound minecraft:block.grindstone.use player @a[distance=..12] ~ ~1 ~ 0.6 0.75 0

tag @s add aea.player.held_titanism