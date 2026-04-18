execute as @s[tag=!SBHPPoisonPotatoEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPPoisonPotatoEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Poisonous Potato. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPPoisonPotatoEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawBeefEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawBeefEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Beef. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawBeefEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawPorkchopEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawPorkchopEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Porkchop. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawPorkchopEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawMuttonEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawMuttonEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Mutton. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawMuttonEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawChickenEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawChickenEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Chicken. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawChickenEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawRabbitEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawRabbitEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Rabbit. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawRabbitEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawCodEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawCodEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Cod. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawCodEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRawSalmonEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRawSalmonEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Raw Salmon. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRawSalmonEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPTropicalFishEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPTropicalFishEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Tropical Fish. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPTropicalFishEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPPufferfishEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPPufferfishEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Pufferfish. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPPufferfishEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPRottenFleshEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPRottenFleshEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Rotten Flesh. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPRottenFleshEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1
execute as @s[tag=!SBHPSpiderEyeEaten,tag=!sbhp.bad_food_fixed] run scoreboard players add @s sbhp.HealthMaxBase 500
execute as @s[tag=!SBHPSpiderEyeEaten,tag=!sbhp.bad_food_fixed] run tellraw @s [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"You did not eat Spider Eye. Some health might be given to you!","color":"aqua"}]
execute store success score @s sbhp.math.rand1 run tag @s remove SBHPSpiderEyeEaten
scoreboard players operation @s sbhp.math.rand2 += @s sbhp.math.rand1

execute if score @s[tag=!sbhp.bad_food_fixed] sbhp.math.rand2 matches 0 run scoreboard players remove @s sbhp.HealthMaxBase 1000
execute if score @s[tag=!sbhp.bad_food_fixed] sbhp.math.rand2 matches 1.. run scoreboard players remove @s sbhp.HealthMaxBase 500
execute if score @s[tag=!sbhp.bad_food_fixed] sbhp.math.rand2 matches 2.. run scoreboard players remove @s sbhp.HealthMaxBase 500

tag @s add sbhp.bad_food_fixed