# Base Health Value for new players is 100.00 HP, increased to 500 base by eating all unique+ food items
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthBase 100
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthCurr 100
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthTrue 10000
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthAdd 0
# Base Value for HealthMult is 100, representing 100%
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthMult 100
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthPrcnt 100
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthMaxBase 10000
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthMaxTrue 10000
scoreboard players set @s[tag=!SBHPInit] sbhp.DmgTimer 20
scoreboard players set @s[tag=!SBHPInit] sbhp.HealthMVis 100

tag @s add SBHPInit