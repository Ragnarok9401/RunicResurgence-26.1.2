loot spawn ~ ~1 ~ loot rr_recast:entities/necrosculker_elite

execute positioned ~ ~1 ~ run function rr_recast:boss/necrosculker_main/necrosculker_elite/check_drops

clear @s *[custom_data~{rr.loot_bag:true,rr.loot_bag.ns_elite:true}] 1

advancement revoke @s only rr_adv:loot/boss/necrosculker/loot_bag_elite