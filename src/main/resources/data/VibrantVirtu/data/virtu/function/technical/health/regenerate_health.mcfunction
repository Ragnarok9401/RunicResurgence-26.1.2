# If Health is already at or above Max Health, then return so further execution is stopped. (MASSIVE help with potential lag!)
execute if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run scoreboard players set @s sbhp.TimeToHeal 0
execute if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run scoreboard players set @s sbhp.TimeToHealBase 0
execute if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run scoreboard players set @s sbhp.HealOverTime 0
execute if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run return 0

# Multiply TimeToHealBase by 2, move into TimeToHeal
scoreboard players set @s sbhp.math.A 2
scoreboard players operation @s[scores={sbhp.TimeToHealBase=1..}] sbhp.TimeToHealBase *= @s sbhp.math.A
scoreboard players operation @s[scores={sbhp.TimeToHealBase=1..}] sbhp.TimeToHeal = @s sbhp.TimeToHealBase
scoreboard players set @s[scores={sbhp.TimeToHealBase=1..}] sbhp.TimeToHealBase 0

# First, add HP to a Math score based on certain conditions and Max Health
#region
## Initialize Math A Score to 10000, representing 100.00% of healing being applied
scoreboard players set @s sbhp.math.A 10000

## Calculate additional base regeneration from Recovery enchantment (+0.8% of Max Health per second per level)
scoreboard players operation @s sbhp.math.B = @s sbhp.HealthMaxBase
scoreboard players set @s sbhp.math.C 0
execute store result score @s sbhp.math.C run data get entity @s equipment.chest.components."minecraft:enchantments"."sbhp:recovery" 8
scoreboard players operation @s sbhp.math.B *= @s sbhp.math.C
scoreboard players set @s sbhp.math.C 1000
scoreboard players operation @s sbhp.math.B /= @s sbhp.math.C
scoreboard players operation @s sbhp.math.A += @s sbhp.math.B

## If current DmgTimer is above max set by HealTimeMax setting, set it to the maximum
execute if score @s sbhp.DmgTimer > $config sbhp.config.HealTimeMax run scoreboard players operation @s sbhp.DmgTimer = $config sbhp.config.HealTimeMax

## Condition Set 1: Recent Damage Taken
 ## If sbhp.DmgTimer <= DmgWait setting, Natural Healing reduced to 0
execute if score @s sbhp.DmgTimer <= $config sbhp.config.DmgWait run scoreboard players set @s sbhp.math.A 0
 ## If sbhp.DmgTimer > DmgWait setting, Natural Healing is multiplied by sbhp.DmgTimer / HealTimeMax
execute if score @s sbhp.DmgTimer > $config sbhp.config.DmgWait run scoreboard players operation @s sbhp.math.D = $config sbhp.config.HealTimeMax
#tellraw @s [{"text":"sbhp.math.A for sbhp.DmgTimer 10+ : ","color":"white","italic":false},{"score":{"name":"@s","objective":"sbhp.math.A"}}]
scoreboard players operation @s[scores={sbhp.DmgTimer=1..}] sbhp.math.A *= @s sbhp.DmgTimer
scoreboard players operation @s[scores={sbhp.DmgTimer=1..}] sbhp.math.A /= @s sbhp.math.D

##-----

## Condition Set 2: Food Saturation and Food Level
### Food Saturation Level 10+ boosts healing by 15%
execute store result score @s sbhp.math.B run data get entity @s foodSaturationLevel 10
#tellraw @s [{"text":"sbhp.math.A for Food Saturation (x10): ","color":"white","italic":false},{"score":{"name":"@s","objective":"sbhp.math.A"}}]
scoreboard players set @s[scores={sbhp.math.B=100..}] sbhp.math.B 115
scoreboard players set @s[scores={sbhp.math.B=..99}] sbhp.math.B 1
scoreboard players operation @s[scores={sbhp.math.B=115}] sbhp.math.A *= @s sbhp.math.B
scoreboard players set @s[scores={sbhp.math.B=115}] sbhp.math.B 100
scoreboard players operation @s[scores={sbhp.math.B=100}] sbhp.math.A /= @s sbhp.math.B

### Food Level 11+ gives 100% healing, less than this reduces healing by up to 40% at 4 Food Level and below
execute store result score @s sbhp.math.B run data get entity @s foodLevel 1
#tellraw @s [{"text":"sbhp.math.A for foodLevel : ","color":"white","italic":false},{"score":{"name":"@s","objective":"sbhp.math.A"}}]
scoreboard players set @s[scores={sbhp.math.B=5..10}] sbhp.math.B 8
scoreboard players set @s[scores={sbhp.math.B=..4}] sbhp.math.B 6
scoreboard players set @s[scores={sbhp.math.B=11..}] sbhp.math.B 10
scoreboard players operation @s sbhp.math.A *= @s sbhp.math.B
scoreboard players set @s sbhp.math.B 10
scoreboard players operation @s sbhp.math.A /= @s sbhp.math.B

##-----

## Condition Set 3: Player Actions
### By default, sprinting reduces healing by 30%
scoreboard players set @s[predicate=sbhp:player/running,nbt=!{active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.B 7000
scoreboard players operation @s[predicate=sbhp:player/running,nbt=!{active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.A *= @s sbhp.math.B
scoreboard players set @s[predicate=sbhp:player/running,nbt=!{active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.B 10000
scoreboard players operation @s[predicate=sbhp:player/running,nbt=!{active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.A /= @s sbhp.math.B

### If Nausea effect is active, sprinting reduces healing by 50%
scoreboard players set @s[predicate=sbhp:player/running,nbt={active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.B 5000
scoreboard players operation @s[predicate=sbhp:player/running,nbt={active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.A *= @s sbhp.math.B
scoreboard players set @s[predicate=sbhp:player/running,nbt={active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.B 10000
scoreboard players operation @s[predicate=sbhp:player/running,nbt={active_effects:[{id:"minecraft:nausea"}]}] sbhp.math.A /= @s sbhp.math.B

##-----

## Condition Set 4: Other Effects, Conditions and Special Actions for Healing
### Nether reduces Healing by 25% overall
scoreboard players set @s[predicate=sbhp:location/nether] sbhp.math.B 75
scoreboard players operation @s[predicate=sbhp:location/nether] sbhp.math.A *= @s sbhp.math.B
scoreboard players set @s[predicate=sbhp:location/nether] sbhp.math.B 100
scoreboard players operation @s[predicate=sbhp:location/nether] sbhp.math.A /= @s sbhp.math.B

### Regeneration Effect (should be last) is an *absolute increase* (meaning it cannot be modified) of 3.33% of Max Health per level
scoreboard players set @s[nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] sbhp.math.C -1
execute store result score @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] sbhp.math.C run data get entity @s active_effects[{id:"minecraft:regeneration"}].amplifier
execute as @s[scores={sbhp.math.C=0..}] run scoreboard players set @s sbhp.math.B 3333
scoreboard players add @s sbhp.math.C 1
scoreboard players operation @s sbhp.math.B *= @s sbhp.math.C
scoreboard players operation @s sbhp.math.A += @s sbhp.math.B

#endregion


# Second, add Math score to Current HP if above 0
#region
## Multiply Math A variable by Visual Max Health and then divide by 10000 (Sets to 1% of max health and then adds or subtracts what is needed in the same breath)
## 20000 is used in this case because healing takes place twice per second, meaning each second you'd heal 2% of health by default
scoreboard players operation @s sbhp.math.A *= @s sbhp.HealthMaxBase
scoreboard players set @s sbhp.math.B 1000000
scoreboard players operation @s sbhp.math.A /= @s sbhp.math.B

## Regeneration Over Time (Tinctures and other effects)
## Calculated last as this is an absolute regeneration over a set time, so it shouldn't be affected by any above calculations
scoreboard players operation @s sbhp.math.C = @s sbhp.HealOverTime
scoreboard players operation @s sbhp.math.C /= @s sbhp.TimeToHeal
scoreboard players operation @s sbhp.HealOverTime -= @s sbhp.math.C
scoreboard players remove @s[scores={sbhp.TimeToHeal=1..}] sbhp.TimeToHeal 1

scoreboard players operation @s sbhp.math.A += @s sbhp.math.C

## Add sbhp.math.A to HealthTrue to complete the regeneration
scoreboard players operation @s[tag=!SBHPMaxHealth] sbhp.HealthTrue += @s sbhp.math.A

#endregion


# Third, set the HP Down 1 and Up 1 Scores to match the new "Visible HP"

