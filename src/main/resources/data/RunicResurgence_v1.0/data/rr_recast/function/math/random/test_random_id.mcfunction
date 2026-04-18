$scoreboard players set $random aea.math.A $(var_1)
$scoreboard players set $random aea.math.B $(var_2)
$scoreboard players set $random aea.math.C $(var_3)
$scoreboard players set $random aea.math.D $(var_4)
$scoreboard players set $random aea.math.E $(var_5)

execute unless score $random aea.math.A = $random aea.math.B unless score $random aea.math.A = $random aea.math.C unless score $random aea.math.A = $random aea.math.D unless score $random aea.math.A = $random aea.math.E unless score $random aea.math.B = $random aea.math.C unless score $random aea.math.B = $random aea.math.D unless score $random aea.math.B = $random aea.math.E unless score $random aea.math.C = $random aea.math.D unless score $random aea.math.C = $random aea.math.E unless score $random aea.math.D = $random aea.math.E run function rr_recast:give/spell_script/random_arcane with storage rr_recast:global random
execute unless score $random aea.math.A = $random aea.math.B unless score $random aea.math.A = $random aea.math.C unless score $random aea.math.A = $random aea.math.D unless score $random aea.math.A = $random aea.math.E unless score $random aea.math.B = $random aea.math.C unless score $random aea.math.B = $random aea.math.D unless score $random aea.math.B = $random aea.math.E unless score $random aea.math.C = $random aea.math.D unless score $random aea.math.C = $random aea.math.E unless score $random aea.math.D = $random aea.math.E run return 0

function rr_recast:give/spell_script/random/arcane