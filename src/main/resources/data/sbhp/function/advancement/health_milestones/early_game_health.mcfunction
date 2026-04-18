function sbhp:advancement/reset_health_increases

# Previous Tier
function sbhp:advancement/health_milestones/beginning_health

# Advancement Setting for Early Game
# (Iron Tools and Armor, small amount of progress)
# advancement grant @s only sbhp_adv:duplicate/story/mine_stone
# advancement grant @s only sbhp_adv:duplicate/story/upgrade_tools
# advancement grant @s only sbhp_adv:duplicate/adventure/sleep_in_bed
# advancement grant @s only sbhp_adv:duplicate/adventure/kill_a_mob
# advancement grant @s only sbhp_adv:duplicate/husbandry/breed_an_animal
# advancement grant @s only sbhp_adv:duplicate/husbandry/plant_seed
advancement grant @s only sbhp_adv:duplicate/runicresurgence/mine_havenite
advancement grant @s only sbhp_adv:duplicate/story/smelt_iron
advancement grant @s only sbhp_adv:duplicate/story/iron_tools
advancement grant @s only sbhp_adv:duplicate/story/obtain_armor
advancement grant @s only sbhp_adv:duplicate/story/lava_bucket
advancement grant @s only sbhp_adv:duplicate/story/deflect_arrow
advancement grant @s only sbhp_adv:duplicate/adventure/shoot_arrow
advancement grant @s only sbhp_adv:duplicate/adventure/trade
advancement grant @s only sbhp_adv:duplicate/husbandry/fishy_business
advancement grant @s only sbhp_adv:duplicate/husbandry/tactical_fishing

function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue