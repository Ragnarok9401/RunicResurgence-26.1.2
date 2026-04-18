scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..8}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"D","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=2}] title {"text":"D e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=3}] title {"text":"D e a","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=4}] title {"text":"D e a g","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=5}] title {"text":"D e a g e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=6}] title {"text":"D e a g e r","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=7}] title {"text":"D e a g e r i","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=8}] title {"text":"D e a g e r i a","color":"aqua","italic":false,"font":"alagard"}

title @s[scores={rr.boss.title_display=13}] times 0 40 40
title @s[scores={rr.boss.title_display=13}] title {"text":"D e a g e r i a","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=13}] subtitle {"text":"The Goddess of the Clock","color":"aqua","italic":false,"font":"alagard"}

execute as @s[scores={rr.boss.title_display=1..8}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=13}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=13}] at @s run tag @s remove rr.boss.deageria.title_display