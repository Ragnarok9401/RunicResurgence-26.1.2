
## Summon two sets of four Crypt Keepers
execute as @s[scores={rr.system.BossTick=100}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=101}] at @s positioned ~ ~-1.45 ~6 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=103}] at @s positioned ~ ~-1.45 ~-6 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=105}] at @s positioned ~4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=105}] at @s positioned ~6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=106}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=107}] at @s positioned ~-4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=109}] at @s positioned ~4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=111}] at @s positioned ~-4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=111}] at @s positioned ~-6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper

execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=102}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=104}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=106}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=108}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=110}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
#endregion

execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
#endregion

# Apply Blindness
execute as @s[scores={rr.system.BossTick=120..290}] at @s run effect give @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative] blindness 8 0 true


## At 200, send 16 Massive Sculk Tendril Clusters toward random players at 0.5 second intervals (so this would be 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350). Upon reaching players, these tendrils wind up and lash out, slowing down players that are hit by its attack and weakening their Mind Health, which is another sort of life bar to keep track of.
#region
## Summoning Markers as the indicators, play a sound as each one summons
execute as @s[scores={rr.system.BossTick=200}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=200}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=220}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=220}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=240}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=240}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=260}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=260}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=280}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=280}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=300}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=300}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=320}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=320}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=340}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=340}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=210}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=210}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=230}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=230}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=250}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=250}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=270}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=270}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=290}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=290}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=310}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=310}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=330}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=330}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=350}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=350}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0