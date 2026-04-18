scoreboard players operation @s sbhp.math.A = @s sbhp.HealthMaxBase
scoreboard players set @s sbhp.math.B 100
scoreboard players operation @s sbhp.math.A /= @s sbhp.math.B
scoreboard players set @s sbhp.math.B 15
scoreboard players operation @s sbhp.math.A *= @s sbhp.math.B
scoreboard players operation @s sbhp.HealthTrue += @s sbhp.math.A

advancement revoke @s only sbhp_adv:health_tracking/drink_health_potion_1