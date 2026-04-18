function sbhp:advancement/reset_health_increases

# Advancement Setting for the beginning
# (Stone tools, no armor, minimal progress)
advancement grant @s only sbhp_adv:duplicate/story/mine_stone
advancement grant @s only sbhp_adv:duplicate/story/upgrade_tools
advancement grant @s only sbhp_adv:duplicate/adventure/sleep_in_bed
advancement grant @s only sbhp_adv:duplicate/adventure/kill_a_mob
advancement grant @s only sbhp_adv:duplicate/husbandry/breed_an_animal
advancement grant @s only sbhp_adv:duplicate/husbandry/plant_seed

function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue