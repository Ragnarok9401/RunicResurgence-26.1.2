execute as @p[advancements={rr_adv:technical/block/place_script_table=true},distance=..50] run function rr_recast:give/blocks/scriptscrying_table
$tellraw @p[advancements={rr_adv:technical/block/place_script_table=true},distance=..50] [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"$(text)","color":"red"}]
tp @s ~ -65 ~
kill @s