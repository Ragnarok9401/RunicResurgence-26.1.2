execute as @a at @s if entity @n[type=marker,tag=rr.structure_marker.ancient_crypt.arena,distance=..80] run stopsound @s music
execute as @a at @s if entity @n[type=marker,tag=rr.structure_marker.ancient_crypt.arena,distance=..80] run playsound rr_recast:sinking_feeling music @s ~ ~ ~ 0.85 1 0


execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.ancient_crypt_song] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.ancient_crypt_song
schedule function rr_recast:structure/ancient_crypt/song_tick_sinking_feeling 142s replace