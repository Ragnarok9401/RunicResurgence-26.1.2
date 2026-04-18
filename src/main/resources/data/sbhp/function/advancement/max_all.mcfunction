function sbhp:advancement/reset_health_increases

# Vanilla Advancements
advancement grant @s from sbhp_adv:duplicate/adventure/root
advancement grant @s from sbhp_adv:duplicate/end/root
advancement grant @s from sbhp_adv:duplicate/husbandry/root
advancement grant @s from sbhp_adv:duplicate/nether/root
advancement grant @s from sbhp_adv:duplicate/story/root

# RR Advancements
advancement grant @s from sbhp_adv:duplicate/runicresurgence/root

function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue