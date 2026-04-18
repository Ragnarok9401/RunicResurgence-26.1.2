scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..7}] reset
title @s[scores={rr.boss.title_display=9..15}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"G","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=2}] title {"text":"G l","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=3}] title {"text":"G l a","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=4}] title {"text":"G l a v","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=5}] title {"text":"G l a v i","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=6}] title {"text":"G l a v i e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=7}] title {"text":"G l a v i e r","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=9}] title {"text":"G l a v i e r   B","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=10}] title {"text":"G l a v i e r   B e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=11}] title {"text":"G l a v i e r   B e n","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=12}] title {"text":"G l a v i e r   B e n e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=13}] title {"text":"G l a v i e r   B e n e v","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=14}] title {"text":"G l a v i e r   B e n e v u","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=15}] title {"text":"G l a v i e r   B e n e v u e","color":"aqua","italic":false,"font":"alagard"}

title @s[scores={rr.boss.title_display=20}] times 0 40 40
title @s[scores={rr.boss.title_display=20}] title {"text":"G l a v i e r   B e n e v u e","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=20}] subtitle {"text":"The Child of Wrath","color":"aqua","italic":false,"font":"alagard"}

execute as @s[scores={rr.boss.title_display=1..7}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=9..15}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=20}] at @s run function rr_recast:cutscene/sfx/text_impact_2
execute as @s[scores={rr.boss.title_display=20}] at @s run tag @s remove rr.boss.glavier.title_display