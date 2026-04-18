# Nearest Player View Direction Tracking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI1] ^-0.5 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI2] ^-1.3 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI3] ^-2.1 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI4] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI5] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI6] ^-2.1 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI7] ^-0.5 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI8] ^-1.3 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI9] ^-2.1 ^0.5 ^
 
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI10] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI11] ^-1.3 ^1.3 ^

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI12] ^-2.1 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEABootsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsI13] ^-0.5 ^0.5 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsIArrowRight] ^0.25 ^0.45 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEABootsIArrowLeft] ^0.75 ^0.45 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel1] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel2] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_fire_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel3] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_projectile_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel4] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_blast_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel5] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_feather_falling
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel6] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_depth_strider
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel7] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_frost_walker
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel8] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_soul_speed
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel9] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_thorns

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel10] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel11] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel12] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEABootsSel13] at @s run function rr_aea:ae_altar/core/marker_handle/boots/enchant_interface_awakened