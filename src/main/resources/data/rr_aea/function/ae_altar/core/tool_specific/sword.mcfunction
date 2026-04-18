# Nearest Player View Direction Tracking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI1] ^-0.5 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI2] ^-1.3 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI3] ^-2.1 ^2.1 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI4] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI5] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI6] ^-2.1 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI7] ^-0.5 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI8] ^-1.3 ^0.5 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI9] ^-2.1 ^0.5 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI10] ^-0.5 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI11] ^-1.3 ^1.3 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEASwordMP1] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordI12] ^-2.1 ^1.3 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordIArrowRight] ^0.25 ^0.45 ^
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack] at @s run tp @e[type=interaction,limit=1,sort=nearest,distance=..5,tag=ArenAEASwordIArrowLeft] ^0.75 ^0.45 ^

execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel1] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_sharp
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel2] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_smite
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel3] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_boa
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel4] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_knock
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel5] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_fire
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel6] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_looting
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel7] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_sweeping
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel8] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_echo
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel9] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_fervor
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel10] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_unbreaking
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel11] at @s run function rr_aea:ae_altar/core/marker_handle/general/enchant_interface_mending
execute as @n[type=marker,distance=..1.25,tag=ArenAEADirTrack,tag=ArenAEAEnchInt,tag=ArenAEASwordSel12] at @s run function rr_aea:ae_altar/core/marker_handle/sword/enchant_interface_maul