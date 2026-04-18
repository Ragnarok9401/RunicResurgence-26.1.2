# Nearest Player View Direction Tracking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI1] ^-0.5 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI2] ^-1.3 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI3] ^-2.1 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI4] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI5] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI6] ^-2.1 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI7] ^-0.5 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI8] ^-1.3 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI9] ^-2.1 ^0.5 ^
 
# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI10] ^-0.5 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI11] ^-1.3 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI12] ^-2.1 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAChestplateMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateI13] ^-0.5 ^0.5 ^

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateIArrowRight] ^0.25 ^0.45 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAChestplateIArrowLeft] ^0.75 ^0.45 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel1] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel2] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_fire_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel3] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_projectile_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel4] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_blast_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel5] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_thorns
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel6] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel7] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel8] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_enlarge
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel9] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_shrink

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel10] at @s run function rr_aea:ae_altar/core/marker_handle/chestplate/enchant_interface_rebound
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel11] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel12] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAChestplateSel13] at @s run function rr_aea:ae_altar/core/marker_handle/chestplate/enchant_interface_awakened