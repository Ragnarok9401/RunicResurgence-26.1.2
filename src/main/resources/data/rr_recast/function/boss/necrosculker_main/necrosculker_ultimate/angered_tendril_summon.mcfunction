##region
$execute rotated ~ 0 positioned ^$(X) ^-1.5 ^$(Z) run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:[rr.boss.ns_void.ticking,"RunicNSUTendril2","RunicNSUTendrilSet2","RunicNSUTendrilReached2"]}
$execute rotated ~ 0 positioned ^$(X) ^-1.5 ^$(Z) run playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.8 1.2 0
##endregion