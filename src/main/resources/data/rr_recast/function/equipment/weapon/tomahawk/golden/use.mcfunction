tag @s add rr.player.using_tomahawk
execute as @s[scores={rr.player.tomahawk_charge=15}] at @s run playsound minecraft:block.iron_chain.place player @s ~ ~1 ~ 0.75 1.25 0

scoreboard players add @s[scores={rr.player.tomahawk_charge=..15}] rr.player.tomahawk_charge 1