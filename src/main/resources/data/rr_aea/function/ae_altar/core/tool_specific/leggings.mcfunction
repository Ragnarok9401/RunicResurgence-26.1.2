# Nearest Player View Direction Tracking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI1] ^-0.5 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI2] ^-1.3 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI3] ^-2.1 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI4] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI5] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI6] ^-2.1 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI7] ^-0.5 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI8] ^-1.3 ^0.5 ^
 
# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI9] ^-2.1 ^0.5 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI10] ^-0.5 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI11] ^-1.3 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI12] ^-2.1 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEALeggingsMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsI13] ^-0.5 ^0.5 ^

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsIArrowRight] ^0.25 ^0.45 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEALeggingsIArrowLeft] ^0.75 ^0.45 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel1] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel2] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_fire_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel3] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_projectile_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel4] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_blast_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel5] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_swift_sneak
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel6] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_thorns
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel7] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel8] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel9] at @s run function rr_aea:ae_altar/core/marker_handle/leggings/enchant_interface_mending
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel10] at @s run function rr_aea:ae_altar/core/marker_handle/leggings/enchant_interface_rebound
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel11] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel12] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEALeggingsSel13] at @s run function rr_aea:ae_altar/core/marker_handle/leggings/enchant_interface_awakened