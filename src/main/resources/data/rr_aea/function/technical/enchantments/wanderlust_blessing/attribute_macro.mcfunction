$attribute @s attack_damage modifier add rr_aea:enchantment.wanderlust_blessing.attack_damage $(dmg) add_multiplied_total
$attribute @s movement_speed modifier add rr_aea:enchantment.wanderlust_blessing.movement_speed $(speed) add_multiplied_base
$attribute @s safe_fall_distance modifier add rr_aea:enchantment.wanderlust_blessing.safe_fall $(jump) add_multiplied_base
$attribute @s block_break_speed modifier add rr_aea:enchantment.wanderlust_blessing.break_speed $(break) add_multiplied_total
$attribute @s block_interaction_range modifier add rr_aea:enchantment.wanderlust_blessing.block_reach $(reach) add_value
$attribute @s entity_interaction_range modifier add rr_aea:enchantment.wanderlust_blessing.entity_reach $(reach) add_value
$attribute @s luck modifier add rr_aea:enchantment.wanderlust_blessing.luck $(luck) add_value

kill @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust]