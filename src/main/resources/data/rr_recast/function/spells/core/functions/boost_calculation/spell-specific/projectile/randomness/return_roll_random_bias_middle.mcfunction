$execute store result score $global rr.math.X run random value $(min)..$(max)
$execute store result score $global rr.math.Y run random value $(min)..$(max)
$execute store result score $global rr.math.Z run random value $(min)..$(max)

# 6 cases covered below
execute if score $global rr.math.X >= $global rr.math.Y if score $global rr.math.Y >= $global rr.math.Z run return run scoreboard players get @s rr.math.Y

execute if score $global rr.math.Z >= $global rr.math.Y if score $global rr.math.Y >= $global rr.math.X run return run scoreboard players get @s rr.math.Y

execute if score $global rr.math.X >= $global rr.math.Z if score $global rr.math.Z >= $global rr.math.Y run return run scoreboard players get @s rr.math.Z

execute if score $global rr.math.Y >= $global rr.math.Z if score $global rr.math.Z >= $global rr.math.X run return run scoreboard players get @s rr.math.Z

execute if score $global rr.math.Y >= $global rr.math.X if score $global rr.math.X >= $global rr.math.Z run return run scoreboard players get @s rr.math.X

execute if score $global rr.math.Z >= $global rr.math.X if score $global rr.math.X >= $global rr.math.Y run return run scoreboard players get @s rr.math.X