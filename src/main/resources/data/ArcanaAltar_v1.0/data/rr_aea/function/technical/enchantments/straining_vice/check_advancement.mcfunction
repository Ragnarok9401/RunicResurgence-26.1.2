execute as @s[advancements={aea_adv:enchantments/straining_vice/using_bow=false}] run scoreboard players set @s aea.ench.strain_timer 0
execute as @s[advancements={aea_adv:enchantments/straining_vice/using_bow=true}] run scoreboard players add @s aea.ench.strain_timer 1
advancement revoke @s only aea_adv:enchantments/straining_vice/using_bow