$execute store result score $global rr.math.X run random value $(min)..$(max)
$execute store result score $global rr.math.Y run random value $(min)..$(max)

# 2 cases covered below
execute if score $global rr.math.X >= $global rr.math.Y run return run scoreboard players get @s rr.math.X

execute if score $global rr.math.Y >= $global rr.math.X run return run scoreboard players get @s rr.math.Y