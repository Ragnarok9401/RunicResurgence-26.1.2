$data modify entity @s data.projectile set value $(projectile)

# Damage Modification for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/damage/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/damage with storage rr_recast:global spells.$(reference)

# Damage Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/damage/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/damage with storage rr_recast:global spells.$(reference)

# AOE Modification for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/aoe/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/aoe with storage rr_recast:global spells.$(reference)

# AOE Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/damage/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/damage with storage rr_recast:global spells.$(reference)

# Projectile Speed Modification for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/proj_speed/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/proj_speed with storage rr_recast:global spells.$(reference)

# Projectile Speed Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/proj_speed/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/proj_speed with storage rr_recast:global spells.$(reference)

# Projectile Lifespan Modification for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/lifespan/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/lifespan with storage rr_recast:global spells.$(reference)

# Projectile Lifespan Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/lifespan/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/lifespan with storage rr_recast:global spells.$(reference)

# Projectile Randomization for Spell-Specific Tags
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/randomness/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness with storage rr_recast:global spells.$(reference)

# Projectile Randomization for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/randomness/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/randomness with storage rr_recast:global spells.$(reference)

# Spell Projectile Acceleration Modification
$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/spell-specific/$(reference)/acceleration/any] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/acceleration with storage rr_recast:global spells.$(reference)

# Any Projectile Acceleration Modification
execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/general/acceleration/any] run function rr_recast:spells/core/functions/boost_calculation/general/acceleration
