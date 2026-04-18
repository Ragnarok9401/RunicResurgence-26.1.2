# Multiply damage taken while using Distraction Vice shield
# Default is 133, or 33% more damage taken
# Set from Config Score of aea.config.distraction_dmg_mod

tellraw @s [{"text":"Pre: ","color":"green","italic":false},{"score":{"name":"@s",objective:"rr.system.dmg_taken"}}]

scoreboard players operation @s aea.math.D = $config aea.config.distraction_dmg_mod
scoreboard players operation @s rr.system.dmg_taken *= @s aea.math.D
scoreboard players set @s aea.math.D 100
scoreboard players operation @s rr.system.dmg_taken /= @s aea.math.D

tellraw @s [{"text":"Post: ","color":"yellow","italic":false},{"score":{"name":"@s",objective:"rr.system.dmg_taken"}}]

playsound minecraft:block.netherite_block.break player @a[distance=..12] ~ ~ ~ 0.8 0.75 0