scoreboard players add @s rr.boss.title_display 1

title @s[scores={rr.boss.title_display=1..4}] reset
title @s[scores={rr.boss.title_display=6..13}] reset
title @s[scores={rr.boss.title_display=15..16}] reset
title @s[scores={rr.boss.title_display=18..22}] reset

title @s times 0 20 20
title @s[scores={rr.boss.title_display=1}] title {"text":"X","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=2}] title {"text":"X I","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=3}] title {"text":"X I L","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=4}] title {"text":"X I L,","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=6}] title {"text":"X I L,   C","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=7}] title {"text":"X I L,   C H","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=8}] title {"text":"X I L,   C H A","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=9}] title {"text":"X I L,   C H A M","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=10}] title {"text":"X I L,   C H A M P","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=11}] title {"text":"X I L,   C H A M P I","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=12}] title {"text":"X I L,   C H A M P I O","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=13}] title {"text":"X I L,   C H A M P I O N","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=15}] title {"text":"X I L,   C H A M P I O N   O","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=16}] title {"text":"X I L,   C H A M P I O N   O F","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=18}] title {"text":"X I L,   C H A M P I O N   O F   T","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=19}] title {"text":"X I L,   C H A M P I O N   O F   T E","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=20}] title {"text":"X I L,   C H A M P I O N   O F   T E M","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=21}] title {"text":"X I L,   C H A M P I O N   O F   T E M P","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=22}] title {"text":"X I L,   C H A M P I O N   O F   T E M P O","color":"gold","italic":false,"font":"alagard"}

title @s[scores={rr.boss.title_display=27}] times 0 40 40
title @s[scores={rr.boss.title_display=27}] title {"text":"X I L,   C H A M P I O N   O F   T E M P O","color":"gold","italic":false,"font":"alagard"}
title @s[scores={rr.boss.title_display=27}] subtitle {"text":"\"I'LL SHOW THEM ALL!!\"","color":"gold","italic":false,"font":"alagard"}

execute as @s[scores={rr.boss.title_display=1..4}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=6..13}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=15..16}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=18..22}] at @s run function rr_recast:cutscene/sfx/text_impact_3
execute as @s[scores={rr.boss.title_display=27}] at @s run function rr_recast:cutscene/sfx/text_impact_3_a
execute as @s[scores={rr.boss.title_display=27}] at @s run tag @s remove rr.boss.xil_final.title_display