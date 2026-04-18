scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..4}] reset
title @s[scores={rr.boss.title_display=6..13}] reset
title @s[scores={rr.boss.title_display=15..16}] reset
title @s[scores={rr.boss.title_display=18..21}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"X","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=2}] title {"text":"X i","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=3}] title {"text":"X i l","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=4}] title {"text":"X i l,","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=6}] title {"text":"X i l,   D","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=7}] title {"text":"X i l,   D i","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=8}] title {"text":"X i l,   D i s","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=9}] title {"text":"X i l,   D i s c","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=10}] title {"text":"X i l,   D i s c i","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=11}] title {"text":"X i l,   D i s c i p","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=12}] title {"text":"X i l,   D i s c i p l","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=13}] title {"text":"X i l,   D i s c i p l e","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=15}] title {"text":"X i l,   D i s c i p l e   o","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=16}] title {"text":"X i l,   D i s c i p l e   o f","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=18}] title {"text":"X i l,   D i s c i p l e   o f   V","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=19}] title {"text":"X i l,   D i s c i p l e   o f   V a","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=20}] title {"text":"X i l,   D i s c i p l e   o f   V a a","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=21}] title {"text":"X i l,   D i s c i p l e   o f   V a a z","color":"gold","italic":false,"font":"alagard"}

title @s[scores={rr.boss.title_display=26}] times 0 40 40
title @s[scores={rr.boss.title_display=26}] title {"text":"X i l,   D i s c i p l e   o f   V a a z","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=26}] subtitle {"text":"\"You think you're special?!\"","color":"gold","italic":false,"font":"alagard"}

execute as @s[scores={rr.boss.title_display=1..4}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=6..13}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=15..16}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=18..21}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=26}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=26}] at @s run tag @s remove rr.boss.xil.title_display