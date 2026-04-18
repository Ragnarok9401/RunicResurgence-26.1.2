scoreboard players set @s sbhp.HealthMaxBase 10000
# Vanilla Resets
advancement revoke @s from sbhp_adv:duplicate/adventure/root
advancement revoke @s from sbhp_adv:duplicate/end/root
advancement revoke @s from sbhp_adv:duplicate/husbandry/root
advancement revoke @s from sbhp_adv:duplicate/nether/root
advancement revoke @s from sbhp_adv:duplicate/story/root

## RR Resets
advancement revoke @s from sbhp_adv:duplicate/runicresurgence/root

## Set Health to Max Health
function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue