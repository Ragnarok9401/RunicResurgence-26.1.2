# Damage Randomization for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/randomness/damage/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/damage with storage rr_recast:global spells.$(reference)

# Lifespan Randomization for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/randomness/lifespan/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/lifespan with storage rr_recast:global spells.$(reference)

# Angle Randomization for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/randomness/angle/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/angle with storage rr_recast:global spells.$(reference)

# Speed Randomization for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/randomness/speed/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/speed with storage rr_recast:global spells.$(reference)