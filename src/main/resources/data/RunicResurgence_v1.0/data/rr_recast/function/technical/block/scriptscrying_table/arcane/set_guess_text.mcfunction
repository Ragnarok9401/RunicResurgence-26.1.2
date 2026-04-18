$data modify entity @s data.minigame.output_$(used).text set value [{"text":"$(used): "},{"text":"$(guess_1)","color":"$(guess_1_output)","italic":false,"font":"rr_recast:hero"},{"text":"$(guess_2)","color":"$(guess_2_output)","italic":false,"font":"rr_recast:hero"},{"text":"$(guess_3)","color":"$(guess_3_output)","italic":false,"font":"rr_recast:hero"},{"text":"$(guess_4)","color":"$(guess_4_output)","italic":false,"font":"rr_recast:hero"},{"text":"$(guess_5)","color":"$(guess_5_output)","italic":false,"font":"rr_recast:hero"}]
$data modify entity @s data.minigame.guesses.guess_$(used) set value "$(guess_1)$(guess_2)$(guess_3)$(guess_4)$(guess_5)"
$data modify entity @s data.spell_script.guesses.guess_$(used) set value "$(guess_1)$(guess_2)$(guess_3)$(guess_4)$(guess_5)"

data remove entity @s data.minigame.guess_1
data remove entity @s data.minigame.guess_1_output
data remove entity @s data.minigame.guess_2
data remove entity @s data.minigame.guess_2_output
data remove entity @s data.minigame.guess_3
data remove entity @s data.minigame.guess_3_output
data remove entity @s data.minigame.guess_4
data remove entity @s data.minigame.guess_4_output
data remove entity @s data.minigame.guess_5
data remove entity @s data.minigame.guess_5_output


#$execute as @s run function rr_recast:technical/block/scriptscrying_table/arcane/output_demo with entity @s data.minigame.output_$(used)
execute as @s run function rr_recast:technical/block/scriptscrying_table/arcane/set_display_text with entity @s data.minigame


# If all guessed numbers are correct, grant the spell to the player
$execute if score @s rr.math.index matches 5.. run advancement grant @p[tag=rr.player.spell_script.interacting] only rr_adv:spell/unlocks/$(reference)
execute if score @s rr.math.index matches 5.. run function rr_recast:technical/block/scriptscrying_table/arcane/clear_minigame


# If Attempts reaches 0, output result immediately and clear all Minigame data
execute if score @s rr.math.A matches ..0 run function rr_recast:technical/block/scriptscrying_table/arcane/clear_minigame