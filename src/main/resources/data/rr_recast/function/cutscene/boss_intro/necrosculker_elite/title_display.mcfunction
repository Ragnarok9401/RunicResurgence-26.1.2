scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..12}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"N","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=2}] title {"text":"N e","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=3}] title {"text":"N e c","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=4}] title {"text":"N e c r","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=5}] title {"text":"N e c r o","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=6}] title {"text":"N e c r o s","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=7}] title {"text":"N e c r o s c","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=8}] title {"text":"N e c r o s c u","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=9}] title {"text":"N e c r o s c u l","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=10}] title {"text":"N e c r o s c u l k","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=11}] title {"text":"N e c r o s c u l k e","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=12}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}

title @s[scores={rr.boss.title_display=14}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=14}] subtitle [{"text":"[ ","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0},{"text":"⭐","color":"yellow","italic":false,"font":"minecraft:default"},{"text":" ]","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}]
title @s[scores={rr.boss.title_display=16}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=16}] subtitle [{"text":"[ ","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0},{"text":"⭐⭐","color":"#ffd900","italic":false,"font":"minecraft:default"},{"text":" ]","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}]

title @s[scores={rr.boss.title_display=21}] times 0 40 40
title @s[scores={rr.boss.title_display=21}] title {"text":"N e c r o s c u l k e r","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}
title @s[scores={rr.boss.title_display=21}] subtitle {"text":"The Darker Defiler","color":"#5387D6","italic":false,"font":"alagard",shadow_color:0}

execute as @s[scores={rr.boss.title_display=1..12}] at @s run function rr_recast:cutscene/sfx/text_impact_1
execute as @s[scores={rr.boss.title_display=14}] at @s run function rr_recast:cutscene/sfx/text_impact_1
execute as @s[scores={rr.boss.title_display=16}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=21}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=21}] at @s run tag @s remove rr.boss.necrosculker_elite.title_display