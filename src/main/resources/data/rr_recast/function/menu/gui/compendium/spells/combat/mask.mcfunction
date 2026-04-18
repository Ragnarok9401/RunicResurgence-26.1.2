# 13b = center, 9b - 17b = center row, 0b - 8b = top row, 18b - 26b = bottom row
data modify storage rr.ui mask set value [{Slot:9b,id:"minecraft:arrow","components":{item_model:"rr_recast:menu/compendium/icons/back","minecraft:item_name":{"text":"Back","color":"red"},"minecraft:custom_data":{RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/spells/open"}}}},\
\
{Slot:1b,id:"minecraft:arrow","components":{"minecraft:item_name":{"text":"Arcane Bolt","color":"light_purple"},"minecraft:custom_model_data":12349,"minecraft:custom_data":{RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/spells/combat/magic_bolt/open"}}}},\
\
{Slot:2b,id:"minecraft:arrow","components":{"minecraft:item_name":{"text":"Paladin's Pylon","color":"aqua"},"minecraft:custom_model_data":12349,"minecraft:custom_data":{RunicMenuItem:{command:"function rr_recast:menu/gui/compendium/spells/combat/paladin_pylon/open"}}}},\
\
{Slot:0b,id:"minecraft:barrier","components":{"minecraft:custom_model_data":4,tooltip_display:{hide_tooltip:true},"minecraft:item_name":{"text":""},"minecraft:custom_data":{RunicMenuItem:{empty:1b}}}}]