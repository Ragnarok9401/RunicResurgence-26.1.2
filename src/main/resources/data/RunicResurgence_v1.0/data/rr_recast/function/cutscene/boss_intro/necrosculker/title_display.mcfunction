scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..12}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"N","color":"#FFFFFF","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=2}] title {"text":"N e","color":"#F1F5FC","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=3}] title {"text":"N e c","color":"#E2EBF8","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=4}] title {"text":"N e c r","color":"#D4E1F5","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=5}] title {"text":"N e c r o","color":"#C6D7F1","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=6}] title {"text":"N e c r o s","color":"#B7CDEE","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=7}] title {"text":"N e c r o s c","color":"#A9C3EB","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=8}] title {"text":"N e c r o s c u","color":"#9BB9E7","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=9}] title {"text":"N e c r o s c u l","color":"#8CAFE4","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=10}] title {"text":"N e c r o s c u l k","color":"#7EA5E0","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=11}] title {"text":"N e c r o s c u l k e","color":"#709BDD","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=12}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0}

title @s[scores={rr.boss.title_display=14}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=14}] subtitle [{"text":"[ ","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0},{"text":"⭐","color":"yellow","italic":false,"font":"minecraft:default"},{"text":" ]","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0}]

title @s[scores={rr.boss.title_display=19}] times 0 40 40
title @s[scores={rr.boss.title_display=19}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=19}] subtitle {"text":"Defiler of the Depths","color":"#5387D6","italic":false,"font":"rr_recast:alagard",shadow_color:0}

execute as @s[scores={rr.boss.title_display=1..12}] at @s run function rr_recast:cutscene/sfx/text_impact_1
execute as @s[scores={rr.boss.title_display=14}] at @s run function rr_recast:cutscene/sfx/text_impact_1
execute as @s[scores={rr.boss.title_display=19}] at @s run function rr_recast:cutscene/sfx/text_impact_1
execute as @s[scores={rr.boss.title_display=19}] at @s run tag @s remove rr.boss.necrosculker.title_display