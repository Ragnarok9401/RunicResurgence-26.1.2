tellraw @s [\
    {"text":"\n🎨 Choose a Default Damage Color:\n","color":"gold"},\
    {"text":"[Black]","color":"black","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 1"}},{"text":" "},\
    {"text":"[White]","color":"white","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 2"}},{"text":" "},\
    {"text":"[Red]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 3"}},{"text":" "},\
    {"text":"[Gold]","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 4"}},{"text":" "},\
    {"text":"[Yellow]","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 5"}},{"text":" "},\
    {"text":"[Green]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 6"}},{"text":" "},\
    {"text":"[Aqua]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger sbhp.trigger.DmgColor set 7"}},{"text":" "},\
    {"text":"[Purple]","color":"light_purple","bold":true,"click_event":{action:"run_command","command":"/trigger sbhp.trigger.DmgColor set 8"}}\
]

scoreboard players reset @s sbhp.trigger.ChangeDmgColor
scoreboard players enable @s sbhp.trigger.ChangeDmgColor