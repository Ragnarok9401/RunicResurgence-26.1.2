loot spawn ~ ~1 ~ loot rr_recast:entities/necrosculker_ultimate

execute positioned ~ ~1 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/check_drops

clear @s *[custom_data~{rr.loot_bag:true,rr.loot_bag.ns_void:true}] 1

advancement revoke @s only rr_adv:loot/boss/necrosculker/loot_bag_void