function sbhp:advancement/reset_health_increases

# Previous Tier
function sbhp:advancement/health_milestones/beginning_health
function sbhp:advancement/health_milestones/early_game_health
function sbhp:advancement/health_milestones/early_mid_game_health

# Advancement Setting for Late Mid Game
# (Enchanted Diamond Tools and Armor, good Overworld progress and decent Nether progress, some Advancement hunting)
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
# advancement grant @s only sbhp_adv:duplicate/runicresurgence/craft_runic_table
# advancement grant @s only sbhp_adv:duplicate/runicresurgence/location/find_lonely_home
# advancement grant @s only sbhp_adv:duplicate/story/mine_diamond
# advancement grant @s only sbhp_adv:duplicate/story/form_obsidian
# advancement grant @s only sbhp_adv:duplicate/story/shiny_gear
# advancement grant @s only sbhp_adv:duplicate/story/enter_the_nether
# advancement grant @s only sbhp_adv:duplicate/adventure/use_lodestone
# advancement grant @s only sbhp_adv:duplicate/adventure/salvage_sherd
# advancement grant @s only sbhp_adv:duplicate/adventure/craft_decorated_pot_using_only_sherds
# advancement grant @s only sbhp_adv:duplicate/adventure/trim_with_any_armor_pattern
# advancement grant @s only sbhp_adv:duplicate/nether/distract_piglin
# advancement grant @s only sbhp_adv:duplicate/nether/obtain_crying_obsidian
# advancement grant @s only sbhp_adv:duplicate/husbandry/tame_an_animal
# advancement grant @s only sbhp_adv:duplicate/husbandry/make_a_sign_glow
# advancement grant @s only sbhp_adv:duplicate/husbandry/axolotl_in_a_bucket
# advancement grant @s only sbhp_adv:duplicate/husbandry/kill_axolotl_target
advancement grant @s only sbhp_adv:duplicate/story/enchant_item
advancement grant @s only sbhp_adv:duplicate/story/cure_zombie_villager
advancement grant @s only sbhp_adv:duplicate/adventure/lightning_rod_with_villager_no_fire
advancement grant @s only sbhp_adv:duplicate/adventure/throw_trident
advancement grant @s only sbhp_adv:duplicate/adventure/voluntary_exile
advancement grant @s only sbhp_adv:duplicate/adventure/minecraft_trials_edition
advancement grant @s only sbhp_adv:duplicate/adventure/under_lock_and_key
advancement grant @s only sbhp_adv:duplicate/adventure/ol_betsy
advancement grant @s only sbhp_adv:duplicate/adventure/whos_the_pillager_now
advancement grant @s only sbhp_adv:duplicate/adventure/spyglass_at_parrot
advancement grant @s only sbhp_adv:duplicate/adventure/summon_iron_golem
advancement grant @s only sbhp_adv:duplicate/adventure/honey_block_slide
advancement grant @s only sbhp_adv:duplicate/adventure/walk_on_powder_snow_with_leather_boots
advancement grant @s only sbhp_adv:duplicate/nether/return_to_sender
advancement grant @s only sbhp_adv:duplicate/nether/find_fortress
advancement grant @s only sbhp_adv:duplicate/nether/obtain_blaze_rod
advancement grant @s only sbhp_adv:duplicate/nether/brew_potion
advancement grant @s only sbhp_adv:duplicate/husbandry/place_dried_ghast_in_water
advancement grant @s only sbhp_adv:duplicate/husbandry/safely_harvest_honey
advancement grant @s only sbhp_adv:duplicate/husbandry/wax_on
advancement grant @s only sbhp_adv:duplicate/husbandry/wax_off
advancement grant @s only sbhp_adv:duplicate/husbandry/tadpole_in_a_bucket

function sbhp:technical/health/calc_total_mhp
scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue