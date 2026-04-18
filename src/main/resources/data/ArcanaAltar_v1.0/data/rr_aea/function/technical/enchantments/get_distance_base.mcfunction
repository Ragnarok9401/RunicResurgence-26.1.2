summon marker ~ ~ ~ {Tags:["ArenDistanceMarker","ArenDistTarget"]}

scoreboard players operation @n[type=marker,tag=ArenDistTarget] aea.math.I = @s aea.math.I
scoreboard players operation @n[type=marker,tag=ArenDistTarget] aea.system.MatchUUID1 = @s aea.system.MatchUUID1
scoreboard players operation @n[type=marker,tag=ArenDistTarget] aea.system.MatchUUID2 = @s aea.system.MatchUUID2
scoreboard players operation @n[type=marker,tag=ArenDistTarget] aea.system.MatchUUID3 = @s aea.system.MatchUUID3
scoreboard players operation @n[type=marker,tag=ArenDistTarget] aea.system.MatchUUID4 = @s aea.system.MatchUUID4

execute as @e[type=marker,sort=nearest,tag=ArenDistanceMarker,tag=ArenDistBase] if score @s aea.math.I = @e[type=arrow,limit=1,sort=nearest,distance=..0.1] aea.math.I run execute at @s run execute as @e[type=marker,tag=ArenDistTarget,sort=nearest] if score @s aea.math.I = @n[type=marker,distance=..0.1,tag=ArenDistBase] aea.math.I run tp @n[type=marker,distance=..0.1,tag=ArenDistBase] ~ ~ ~ facing entity @s

tag @s add ArenDistMarkTrgtSummoned