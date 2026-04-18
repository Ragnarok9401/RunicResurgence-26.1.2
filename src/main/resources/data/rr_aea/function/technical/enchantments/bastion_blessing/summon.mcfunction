$summon item_display ~ ~ ~ $(item_display)
scoreboard players operation @n[distance=..0.1,tag=rr.setup.paladin_pylon,type=item_display] rr.system.pid = @s rr.system.pid
execute as @n[distance=..0.1,tag=rr.setup.paladin_pylon,type=item_display] run function rr_aea:technical/enchantments/bastion_blessing/set_pylon_data with storage rr_recast:global spells.paladin_pylon
tag @n[distance=..0.1,tag=rr.setup.paladin_pylon,type=item_display] remove rr.setup.paladin_pylon

scoreboard players remove @s aea.ench.bastion_token 1

tellraw @s [{"text":"Bastion activated!","color":"green"}]