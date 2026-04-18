scoreboard objectives add rr.system.playerUUID1 dummy
scoreboard objectives add rr.system.playerUUID2 dummy
scoreboard objectives add rr.system.playerUUID3 dummy
scoreboard objectives add rr.system.playerUUID4 dummy

scoreboard objectives add rr.system.matchUUID1 dummy
scoreboard objectives add rr.system.matchUUID2 dummy
scoreboard objectives add rr.system.matchUUID3 dummy
scoreboard objectives add rr.system.matchUUID4 dummy
scoreboard objectives add rr.system.pid dummy

scoreboard objectives add rr.system.Timer dummy
scoreboard objectives add rr.system.display dummy
scoreboard objectives add rr.system.Interacted dummy
scoreboard objectives add rr.system.AttributeA dummy
scoreboard objectives add rr.system.bow_used minecraft.used:bow
scoreboard objectives add rr.system.dmg_taken minecraft.custom:minecraft.damage_taken

scoreboard objectives add rr.system.CraftCharge dummy
scoreboard objectives add rr.system.ActionbarChange dummy
scoreboard objectives add rr.system.UpdateNumber dummy
scoreboard objectives add rr.system.cutscene_index dummy

scoreboard objectives add rr.system.BossTick dummy
scoreboard objectives add rr.system.BossSongTick dummy
scoreboard objectives add rr.system.BossHealth dummy
scoreboard objectives add rr.system.NSRootHP dummy
scoreboard objectives add rr.system.NSLaserCD dummy
scoreboard objectives add rr.system.BossDmg dummy
scoreboard objectives add rr.system.BossYCoord dummy
scoreboard objectives add rr.system.BossYCStore dummy

scoreboard objectives add rr.system.pos_x dummy
scoreboard objectives add rr.system.pos_y dummy
scoreboard objectives add rr.system.pos_z dummy

scoreboard objectives add rr.block.id dummy

scoreboard objectives add rr.equipment.storage_tier dummy
scoreboard objectives add rr.equipment.equipment_power dummy
scoreboard objectives add rr.equipment.id dummy

scoreboard objectives add rr.ui dummy
scoreboard objectives add rr.ui.id dummy

# Per-player Magic Threshold scoreboard to keep track of/modify how much time must elapse before specific spells may cast, default 1000.
# Changes with Enchantments, Tablet tiers, Spell powers, and many other things.
scoreboard objectives add rr.player.MagicThreshold dummy
scoreboard objectives add rr.player.tomahawk_charge dummy

scoreboard objectives add rr.stats.SpellsCast dummy

# Stats for Necrosculker Kills
scoreboard objectives add rr.stats.NSKills dummy
scoreboard objectives add rr.stats.NSEKills dummy
scoreboard objectives add rr.stats.NSNKills dummy
scoreboard objectives add rr.stats.NSUKills dummy


# Event Scoreboards
scoreboard objectives add rr.event.meteorite_damage dummy

# Boss-related Scoreboards
scoreboard objectives add rr.boss.title_display dummy
scoreboard objectives add rr.boss.SkeletonCount dummy
scoreboard objectives add rr.boss.weakpoint_damage dummy

# Spell System Scoreboards
scoreboard objectives add rr.spell.SpellID dummy
scoreboard objectives add rr.spell.SpellStore dummy
scoreboard objectives add rr.spell.SpellStart dummy
scoreboard objectives add rr.spell.TabletCD dummy

## Time system is half-replaced with a Mana system, whereby players must manage their current mana amount as well as keep track of spell timings
scoreboard objectives add rr.spell.Mana dummy
scoreboard objectives add rr.spell.ManaVisible dummy
scoreboard objectives add rr.spell.ManaMax dummy
scoreboard objectives add rr.spell.ManaPercent dummy
## Bonus Mana Max score modifies how much mana can be stored (compared to initial max of 100)
scoreboard objectives add rr.spell.ManaMaxBonus dummy
scoreboard objectives add rr.spell.ManaMaxBonusVisible dummy
## While ManaPercent will keep track of how much mana you have compared to the base maximum, ManaPercentBonus will keep track of total max mana including bonuses
scoreboard objectives add rr.spell.ManaPercentBonus dummy

## Windup and Cooldown control how fast a spell casts once activated and how soon you can cast again once a spell is complete
scoreboard objectives add rr.spell.Windup dummy
scoreboard objectives add rr.spell.Cooldown dummy
## Bonus Windup and Cooldown modify above scoreboards in positive or negative ways
## Positive Bonus means more time for both, negative Bonus means less time
scoreboard objectives add rr.spell.WindupBonus dummy
scoreboard objectives add rr.spell.CooldownBonus dummy
## Projectile Count tracks the number of projectiles that must be summoned
## if a spell should spawn multiple of them
scoreboard objectives add rr.spell.projectile_count dummy
## Projectile Count Delay tracks the delay, in ticks, between each
## projectile summoned if a spell spawns multiple of them
scoreboard objectives add rr.spell.projectile_count_delay dummy

scoreboard objectives add rr.spell.split_num dummy
scoreboard objectives add rr.spell.split_max dummy
scoreboard objectives add rr.spell.split_copy dummy

## Bonus Dmg scores modify and improve damage dealt by spells of certain/all types (Main counts for all dmg types)
scoreboard objectives add rr.spell.DmgMainBonus dummy
scoreboard objectives add rr.spell.DmgMagicBonus dummy
scoreboard objectives add rr.spell.DmgAirBonus dummy
scoreboard objectives add rr.spell.DmgChaosBonus dummy
scoreboard objectives add rr.spell.DmgColdBonus dummy
scoreboard objectives add rr.spell.DmgEarthBonus dummy
scoreboard objectives add rr.spell.DmgForceBonus dummy
scoreboard objectives add rr.spell.DmgFireBonus dummy
scoreboard objectives add rr.spell.DmgLightningBonus dummy
scoreboard objectives add rr.spell.DmgPiercingBonus dummy


scoreboard objectives add rr.math.A dummy
scoreboard objectives add rr.math.B dummy
scoreboard objectives add rr.math.C dummy
scoreboard objectives add rr.math.X dummy
scoreboard objectives add rr.math.Y dummy
scoreboard objectives add rr.math.Z dummy
scoreboard objectives add rr.math.Tick dummy
scoreboard objectives add rr.math.ItemCount dummy
scoreboard objectives add rr.math.Seconds dummy
scoreboard objectives add rr.math.Minutes dummy
scoreboard objectives add rr.math.Hours dummy
scoreboard objectives add rr.math.index dummy


bossbar add rr.boss.necrosculker [{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐","color":"yellow","italic":false},{"text":" ]","color":"#5387D6","italic":false}]
bossbar add rr.boss.necrosculker_elite [{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐⭐","color":"yellow","italic":false},{"text":" ]","color":"#5387D6","italic":false}]
bossbar add rr.boss.necrosculker_nightmare [{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐⭐⭐","color":"#ffd900","italic":false},{"text":" ]","color":"#5387D6","italic":false}]
bossbar add rr.boss.necrosculker_ultimate [{"text":"The Necrosculker","color":"#5387D6","italic":false},{"text":" [ ","color":"#5387D6","italic":false},{"text":"⭐","color":"red","italic":false},{"text":" ]","color":"#5387D6","italic":false}]

bossbar set rr.boss.necrosculker color blue
bossbar set rr.boss.necrosculker_elite color blue
bossbar set rr.boss.necrosculker_nightmare color blue
bossbar set rr.boss.necrosculker_ultimate color blue

bossbar set rr.boss.necrosculker style notched_10
bossbar set rr.boss.necrosculker_elite style notched_10
bossbar set rr.boss.necrosculker_nightmare style notched_10
bossbar set rr.boss.necrosculker_ultimate style notched_10

team add rr_recast.ns_summons {"text":"Necrosculker Summons","color":"blue","italic":false}
team modify rr_recast.ns_summons friendlyFire false
team add rr_recast.ns_e_summons {"text":"Elite Necrosculker Summons","color":"blue","italic":false}
team modify rr_recast.ns_e_summons friendlyFire false
team add rr_recast.ns_n_summons {"text":"Nightmare Necrosculker Summons","color":"blue","italic":false}
team modify rr_recast.ns_n_summons friendlyFire false
team add rr_recast.ns_u_summons {"text":"Void Necrosculker Summons","color":"blue","italic":false}
team modify rr_recast.ns_u_summons friendlyFire false

scoreboard players set @a rr.system.NSLaserCD 1

execute as @a unless score @s rr.system.ActionbarChange matches -2147483648..2147483647 run scoreboard players set @s rr.system.ActionbarChange 0

execute as @a unless score @s rr.spell.ManaMax matches 1..2147483647 run scoreboard players set @s rr.spell.ManaMax 10000
execute as @a unless score @s rr.spell.ManaMaxBonus matches 1..2147483647 run scoreboard players set @s rr.spell.ManaMaxBonus 10000
execute as @a unless score @s rr.spell.ManaPercent matches 0..2147483647 run scoreboard players set @s rr.spell.ManaPercent 100
execute as @a unless score @s rr.spell.ManaPercentBonus matches 0..2147483647 run scoreboard players set @s rr.spell.ManaPercentBonus 100
execute as @a unless score @s rr.spell.Mana matches 0..2147483647 run scoreboard players set @s rr.spell.Mana 10000

# Triggers (create and enable here)
scoreboard objectives add rr.trigger.reloadPacks trigger
scoreboard players enable @a rr.trigger.reloadPacks
scoreboard objectives add rr.trigger.meteorEvent trigger
scoreboard players enable @a[tag=rr.player.is_admin] rr.trigger.meteorEvent
scoreboard objectives add rr.trigger.item_stats trigger
scoreboard players enable @a rr.trigger.item_stats
scoreboard objectives add rr.trigger.share_item_stats trigger
scoreboard players enable @a rr.trigger.share_item_stats
scoreboard objectives add rr.trigger.show_updates trigger
scoreboard players enable @a rr.trigger.show_updates
scoreboard objectives add rr.trigger.show_last_update trigger
scoreboard players enable @a rr.trigger.show_last_update
scoreboard objectives add rr.trigger.credits trigger
scoreboard players enable @a rr.trigger.credits
scoreboard objectives add rr.trigger.knowledge_id trigger
scoreboard players enable @a rr.trigger.knowledge_id
scoreboard objectives add rr.trigger.show_knowledge trigger
scoreboard players enable @a rr.trigger.show_knowledge

execute as @a at @s store result score @s rr.system.playerUUID1 run data get entity @s UUID[0]
execute as @a at @s store result score @s rr.system.playerUUID2 run data get entity @s UUID[1]
execute as @a at @s store result score @s rr.system.playerUUID3 run data get entity @s UUID[2]
execute as @a at @s store result score @s rr.system.playerUUID4 run data get entity @s UUID[3]

scoreboard players set $global rr.system.UpdateNumber 26

execute unless score $global rr.block.id matches -2147483648..2147483647 run scoreboard players set $global rr.block.id 0
execute unless score $global rr.system.pid matches -2147483648..2147483647 run scoreboard players set $global rr.system.pid 0

tag @a add RunicReloadReset
tag @a remove RunicReload

# tag @a[tag=!RunicMOTDOn,tag=!RunicMOTDOff] add RunicMOTDOn
# tag @a[tag=!RunicAEAGuideY,tag=!RunicAEAGuideN] add RunicAEAGuideY

# Setup entity at 0,0,0 that keeps track of whether or not scheduled functions are executing.
# If this marker disappears, it's not a big deal. This simply keeps scheduled functions from re-scheduling on world reload
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler] run summon marker ~ ~ ~ {Tags:["rr.global","rr.scheduler"]}

#schedule function rr_recast:technical/2t 2t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.2t] run schedule function rr_recast:technical/2t 2t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.3t] run schedule function rr_recast:technical/3t 3t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.4t] run schedule function rr_recast:technical/4t 4t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.5t] run schedule function rr_recast:technical/5t 5t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.10t] run schedule function rr_recast:technical/10t 10t replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.1s] run schedule function rr_recast:technical/1s 1s replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.cutscene_loop] run schedule function rr_recast:cutscene/loop 1s replace
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.1d] run schedule function rr_recast:technical/1d 1d append
execute in overworld positioned 0.5 0.5 0.5 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.ancient_crypt_song] run schedule function rr_recast:structure/ancient_crypt/song_tick_sinking_feeling 1s replace

setblock 0 -64 0 yellow_shulker_box replace
setblock 0 -63 0 bedrock
execute in overworld run forceload add 0 0

# Set default Spells and all necessary stats for them
function rr_recast:technical/set_default_spells

tellraw @a [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"Runic Resurgence has loaded successfully","color":"light_purple"}]