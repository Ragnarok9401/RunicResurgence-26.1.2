advancement revoke @s only aea_adv:enchantments/hit_with_echo_2
execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["ArenEchoCloud2","ArenEchoCloud"]}
execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 store result score @n[type=marker,tag=ArenEchoCloud2,distance=..0.25] aea.system.MatchUUID1 run scoreboard players get @s aea.system.PlayerUUID1
execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 store result score @n[type=marker,tag=ArenEchoCloud2,distance=..0.25] aea.system.MatchUUID2 run scoreboard players get @s aea.system.PlayerUUID2
execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 store result score @n[type=marker,tag=ArenEchoCloud2,distance=..0.25] aea.system.MatchUUID3 run scoreboard players get @s aea.system.PlayerUUID3
execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 store result score @n[type=marker,tag=ArenEchoCloud2,distance=..0.25] aea.system.MatchUUID4 run scoreboard players get @s aea.system.PlayerUUID4

execute as @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] at @s anchored eyes positioned ^ ^ ^3 run scoreboard players set @n[type=marker,tag=ArenEchoCloud2,distance=..0.25] aea.math.E 42
scoreboard players set @s[scores={aea.ench.echo_cooldown=..0,aea.system.SwordUsed=1..}] aea.ench.echo_cooldown 2