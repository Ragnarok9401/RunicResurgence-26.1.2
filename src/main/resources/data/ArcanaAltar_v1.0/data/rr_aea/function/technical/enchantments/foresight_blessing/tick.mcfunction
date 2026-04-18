execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run effect give @s speed 5 4 true
execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run effect give @s haste 5 4 true
execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run scoreboard players add @s sbhp.HealOverTime 25
execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run scoreboard players add @s sbhp.TimeToHeal 2
execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run playsound minecraft:block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 0.65 1.4
execute as @s[scores={aea.ench.foresight_timer=1..,aea.system.shield_used=1..}] run playsound minecraft:entity.arrow.hit_player player @a[distance=..20] ~ ~ ~ 0.65 1
execute as @s[scores={aea.ench.foresight_timer=1..8}] positioned ~ ~1.65 ~ run particle enchanted_hit ^ ^ ^0.65 0.06 0.06 0.06 0.0125 1 normal @a[distance=..40]
execute as @s[scores={aea.ench.foresight_timer=1..}] run scoreboard players remove @s aea.ench.foresight_timer 1

advancement revoke @s only aea_adv:enchantments/foresight_blessing/use