execute on origin as @s[type=#rr_aea:can_shoot_arrows,type=skeleton] at @s as @n[type=spider,distance=..0.1] run ride @s dismount
execute on origin as @s[type=#rr_aea:can_shoot_arrows,type=skeleton] at @s unless entity @n[type=spider,distance=..0.8] run ride @s dismount
execute on origin as @s[predicate=!rr_aea:player_conditions/sneaking] store result score @s aea.math.D run clear @s string 0
execute on origin as @s[predicate=!rr_aea:player_conditions/sneaking,gamemode=creative] run scoreboard players set @s aea.math.D 1
execute on origin as @s[predicate=!rr_aea:player_conditions/sneaking,scores={aea.math.D=1..},gamemode=!creative] run clear @s string 1
execute on origin as @s[predicate=!rr_aea:player_conditions/sneaking,scores={aea.math.D=1..}] run ride @s mount @n[type=arrow,nbt={inGround:false},distance=..0.01]
execute on origin as @s[type=skeleton] at @s if entity @n[type=spider,distance=..0.8] as @n[type=spider,distance=..0.8] run ride @s mount @n[type=arrow,nbt={inGround:false},distance=..3]

playsound minecraft:item.lead.tied player @a[distance=..15] ~ ~ ~ 0.5 0.8 0