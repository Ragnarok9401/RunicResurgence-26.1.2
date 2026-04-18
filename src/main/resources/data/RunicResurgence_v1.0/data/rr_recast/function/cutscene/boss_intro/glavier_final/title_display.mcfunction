scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..8}] reset
title @s[scores={rr.boss.title_display=10..12}] reset
title @s[scores={rr.boss.title_display=14..15}] reset
title @s[scores={rr.boss.title_display=17..23}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"G","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=2}] title {"text":"G L","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=3}] title {"text":"G L A","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=4}] title {"text":"G L A V","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=5}] title {"text":"G L A V I","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=6}] title {"text":"G L A V I E","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=7}] title {"text":"G L A V I E R","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=8}] title {"text":"G L A V I E R,","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=10}] title {"text":"G L A V I E R,   G","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=11}] title {"text":"G L A V I E R,   G O","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=12}] title {"text":"G L A V I E R,   G O D","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=14}] title {"text":"G L A V I E R,   G O D   O","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=15}] title {"text":"G L A V I E R,   G O D   O F","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=17}] title {"text":"G L A V I E R,   G O D   O F   P","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=18}] title {"text":"G L A V I E R,   G O D   O F   P E","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=19}] title {"text":"G L A V I E R,   G O D   O F   P E N","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=20}] title {"text":"G L A V I E R,   G O D   O F   P E N A","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=21}] title {"text":"G L A V I E R,   G O D   O F   P E N A N","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=22}] title {"text":"G L A V I E R,   G O D   O F   P E N A N C","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=23}] title {"text":"G L A V I E R,   G O D   O F   P E N A N C E","color":"aqua","italic":false,"font":"alagard"}

title @s[scores={rr.boss.title_display=28}] times 0 40 40
title @s[scores={rr.boss.title_display=28}] title {"text":"G L A V I E R,   G O D   O F   P E N A N C E","color":"aqua","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=28}] subtitle {"text":"T H E   P E R F E C T   W R A T H","color":"aqua","italic":false,"font":"alagard"}

execute as @s[scores={rr.boss.title_display=1..8}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=10..12}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=14..15}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=17..23}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=28}] at @s run function rr_recast:cutscene/sfx/text_impact_3_a
execute as @s[scores={rr.boss.title_display=28}] at @s run tag @s remove rr.boss.glavier_final.title_display