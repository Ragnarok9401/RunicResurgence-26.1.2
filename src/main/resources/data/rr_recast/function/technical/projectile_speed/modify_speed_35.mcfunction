execute as @s at @s positioned ~ ~1.5 ~ as @e[type=arrow,tag=!rr.projectile.speed_modified,nbt=!{inGround:true},distance=..1] at @s run function rr_recast:technical/projectile_speed/increase_speed_35
advancement revoke @s only rr_adv:extra/projectile_speed_plus_35
scoreboard players set @s rr.system.bow_used 0