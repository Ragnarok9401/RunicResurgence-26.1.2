execute as @s[type=player] run return 0
execute as @s[type=!#rr_aea:can_be_enraged] run return 1

execute as @s at @s unless items entity @s armor.body * run data merge entity @s {drop_chances:{body:0.0f}}
execute as @s at @s if items entity @s armor.body * run item modify entity @s armor.body rr_aea:apply_enrage_tick
execute as @s at @s unless items entity @s armor.body * run item replace entity @s armor.body with leather_horse_armor[enchantments={"rr_aea:enrage_tick":1},custom_data={"aea.custom_body":true,"aea.item_set_by_aea":true}] 1
stopsound @a[distance=..15] * minecraft:entity.horse.armor
execute as @s unless score @s aea.ench.enrage_value matches 0.. run scoreboard players set @s aea.ench.enrage_value 0

scoreboard players add @s aea.ench.enrage_value 10