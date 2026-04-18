function sbhp:advancement/reset_health_increases

# Previous Tier
function sbhp:advancement/health_milestones/beginning_health
function sbhp:advancement/health_milestones/early_game_health

# Advancement Setting for Early Mid Game
# (Diamond Tools and Armor, decent Overworld progress and minimal Nether progress)
# advancement grant @s only sbhp_adv:duplicate/story/mine_stone
# advancement grant @s only sbhp_adv:duplicate/story/upgrade_tools
# advancement grant @s only sbhp_adv:duplicate/adventure/sleep_in_bed
# advancement grant @s only sbhp_adv:duplicate/adventure/kill_a_mob
# advancement grant @s only sbhp_adv:duplicate/husbandry/breed_an_animal
# advancement grant @s only sbhp_adv:duplicate/husbandry/plant_seed
# advancement grant @s only sbhp_adv:duplicate/runicresurgence/mine_havenite
# advancement grant @s only sbhp_adv:duplicate/story/smelt_iron
# advancement grant @s only sbhp_adv:duplicate/story/iron_tools
# advancement grant @s only sbhp_adv:duplicate/story/obtain_armor
# advancement grant @s only sbhp_adv:duplicate/story/lava_bucket
# advancement grant @s only sbhp_adv:duplicate/story/deflect_arrow
# advancement grant @s only sbhp_adv:duplicate/adventure/shoot_arrow
# advancement grant @s only sbhp_adv:duplicate/adventure/trade
# advancement grant @s only sbhp_adv:duplicate/husbandry/fishy_business
# advancement grant @s only sbhp_adv:duplicate/husbandry/tactical_fishing
advancement grant @s only sbhp_adv:duplicate/runicresurgence/craft_runic_table
advancement grant @s only sbhp_adv:duplicate/runicresurgence/location/find_lonely_home
advancement grant @s only sbhp_adv:duplicate/story/mine_diamond
advancement grant @s only sbhp_adv:duplicate/story/form_obsidian
advancement grant @s only sbhp_adv:duplicate/story/shiny_gear
advancement grant @s only sbhp_adv:duplicate/story/enter_the_nether
advancement grant @s only sbhp_adv:duplicate/adventure/use_lodestone
advancement grant @s only sbhp_adv:duplicate/adventure/salvage_sherd
advancement grant @s only sbhp_adv:duplicate/adventure/craft_decorated_pot_using_only_sherds
advancement grant @s only sbhp_adv:duplicate/adventure/trim_with_any_armor_pattern
advancement grant @s only sbhp_adv:duplicate/nether/distract_piglin
advancement grant @s only sbhp_adv:duplicate/nether/obtain_crying_obsidian
advancement grant @s only sbhp_adv:duplicate/husbandry/tame_an_animal
advancement grant @s only sbhp_adv:duplicate/husbandry/make_a_sign_glow
advancement grant @s only sbhp_adv:duplicate/husbandry/axolotl_in_a_bucket
advancement grant @s only sbhp_adv:duplicate/husbandry/kill_axolotl_target

function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue