# Remove Health from True Health scoreboard if damage is taken
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s sbhp.math.B = $config sbhp.config.BaseDmgMod
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s rr.system.dmg_taken *= @s sbhp.math.B
execute as @s[scores={rr.system.dmg_taken=1..,sbhp.Armor=21..}] at @s run function sbhp:technical/health/modify_damage_with_armor
# tellraw @s {"text":"Damage Taken: ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"rr.system.dmg_taken"},"color":"gold"}]}
execute if score $config sbhp.config.DmgIndOn matches 1 as @s[scores={rr.system.dmg_taken=1..}] at @s run function sbhp:technical/health/dmg_display
# execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players set @s sbhp.math.B 1
# execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s rr.system.dmg_taken /= @s sbhp.math.B
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s sbhp.HealthTrue -= @s rr.system.dmg_taken
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players set @s rr.system.dmg_taken 0

# Kill players with a 0 or negative HealthTrue score
# Also set health to (RespawnHealth)% of max upon respawning
# Note that RespawnHealth is a Config option set in-game, defaults to 80%
execute as @s[scores={sbhp.HealthTrue=..0},predicate=!sbhp:player/has_death_protection] run tag @s add SBHPKill
execute as @s[scores={sbhp.HealthTrue=..0},predicate=sbhp:player/has_death_protection] run function sbhp:damage/death_protection_effect
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.math.B = $config sbhp.config.RespawnHealth
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue *= @s sbhp.math.B
execute as @s[tag=SBHPKill] run scoreboard players set @s sbhp.math.B 100
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue /= @s sbhp.math.B
execute as @s[tag=SBHPKill] run kill @s
execute as @s[tag=SBHPKill] run tag @s add SBHPReset
execute as @s[tag=SBHPKill] run tag @s remove SBHPKill

# Revoke advancement to reset the system for player
advancement revoke @s only sbhp_adv:health_tracking/take_damage