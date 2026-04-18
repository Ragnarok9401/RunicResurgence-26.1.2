# Nearest Player View Direction Tracking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI1] ^-0.5 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI2] ^-1.3 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI3] ^-2.1 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI4] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI5] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI6] ^-2.1 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI7] ^-0.5 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI8] ^-1.3 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI9] ^-2.1 ^0.5 ^

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI10] ^-0.5 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI11] ^-1.3 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI12] ^-2.1 ^1.3 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAHelmetMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetI13] ^-0.5 ^0.5 ^

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetIArrowRight] ^0.25 ^0.45 ^
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEAHelmetIArrowLeft] ^0.75 ^0.45 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel1] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel2] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_fire_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel3] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_projectile_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel4] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_blast_protection
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel5] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_respiration
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel6] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_aqua_affinity
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel7] at @s run function rr_aea:ae_altar/core/marker_handle/armor/enchant_interface_thorns
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel8] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel9] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending

# Unneccessary until new enchantments are added
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel10] at @s run function rr_aea:ae_altar/core/marker_handle/helmet/enchant_interface_rebound
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel11] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel12] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
# execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEAHelmetSel13] at @s run function rr_aea:ae_altar/core/marker_handle/helmet/enchant_interface_awakened