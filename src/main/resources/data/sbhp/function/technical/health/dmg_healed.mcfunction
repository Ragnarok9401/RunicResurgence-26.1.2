scoreboard players operation @s sbhp.HPDwn1 = @s sbhp.HealthCurr
scoreboard players operation @s sbhp.HPUp1 = @s sbhp.HealthCurr
scoreboard players remove @s sbhp.HPDwn1 1
scoreboard players add @s sbhp.HPUp1 1

execute as @a[scores={sbhp.trigger.ToggleHealSound=1}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.015 1.6 0

execute unless function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud
execute if function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud_with_mana

advancement revoke @s only sbhp_adv:health_tracking/health_up