execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=2301..}] at @s run scoreboard players set @s aea.ench.fervor_damage 2300
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=2..}] at @s run scoreboard players remove @s aea.ench.fervor_damage 2
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=800..1399}] at @s run effect give @s speed 2 1 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=800..1399}] at @s run effect give @s haste 2 1 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=1400..1999}] at @s run effect give @s speed 2 2 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=1400..1999}] at @s run effect give @s haste 2 2 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=2000..}] at @s run effect give @s speed 2 3 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2,scores={aea.ench.fervor_damage=2000..}] at @s run effect give @s haste 2 3 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_2] at @s run return fail

execute as @s[predicate=rr_aea:held_items/mainhand/fervor_1,scores={aea.ench.fervor_damage=1101..}] at @s run scoreboard players set @s aea.ench.fervor_damage 1100
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_1,scores={aea.ench.fervor_damage=2..}] at @s run scoreboard players remove @s aea.ench.fervor_damage 2
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_1,scores={aea.ench.fervor_damage=800..}] at @s run effect give @s speed 2 1 true
execute as @s[predicate=rr_aea:held_items/mainhand/fervor_1,scores={aea.ench.fervor_damage=800..}] at @s run effect give @s haste 2 1 true