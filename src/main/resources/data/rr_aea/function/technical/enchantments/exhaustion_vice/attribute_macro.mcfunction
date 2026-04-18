$attribute @s attack_damage modifier add rr_aea:enchantment.exhaustion_vice.attack_damage $(dmg) add_multiplied_total
$attribute @s movement_speed modifier add rr_aea:enchantment.exhaustion_vice.movement_speed $(speed) add_multiplied_total
$attribute @s jump_strength modifier add rr_aea:enchantment.exhaustion_vice.jump_strength $(jump) add_multiplied_base
$attribute @s safe_fall_distance modifier add rr_aea:enchantment.exhaustion_vice.safe_fall $(jump) add_multiplied_base
$attribute @s block_break_speed modifier add rr_aea:enchantment.exhaustion_vice.break_speed $(break) add_multiplied_total
$attribute @s block_interaction_range modifier add rr_aea:enchantment.exhaustion_vice.block_reach $(reach) add_value
$attribute @s entity_interaction_range modifier add rr_aea:enchantment.exhaustion_vice.entity_reach $(reach) add_value
$attribute @s luck modifier add rr_aea:enchantment.exhaustion_vice.luck $(luck) add_value

kill @n[type=marker,distance=..0.1,tag=aea.ench.exhaustion]