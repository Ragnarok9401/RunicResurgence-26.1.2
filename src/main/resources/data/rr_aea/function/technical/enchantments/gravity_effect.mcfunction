# execute as @a[predicate=rr_aea:held_items/mainhand/bow/gravity_bow,predicate=rr_aea:player_conditions/sneaking,scores={aea.system.bow_used=1..}] at @s anchored eyes run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={ShotFromCrossbow:false,HasBeenShot:true,inGround:false,NoGravity:false},distance=..0.75] {Tags:["ArenGravArrow"],NoGravity:true}
# 
# execute as @a[predicate=rr_aea:held_items/offhand/bow/gravity_bow,predicate=rr_aea:player_conditions/sneaking,scores={aea.system.bow_used=1..}] at @s anchored eyes run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={ShotFromCrossbow:false,HasBeenShot:true,inGround:false,NoGravity:false},distance=..0.75] {Tags:["ArenGravArrow"],NoGravity:true}
# 
# scoreboard players set @a[scores={aea.system.bow_used=1..}] aea.system.bow_used 0

# execute as @s[predicate=rr_aea:player_conditions/sneaking] at @s anchored eyes run particle portal ^ ^0.3 ^ 0 0 0 0.0125 1 force @a[distance=..40]

advancement revoke @s only aea_adv:enchantments/use_gravity_bow