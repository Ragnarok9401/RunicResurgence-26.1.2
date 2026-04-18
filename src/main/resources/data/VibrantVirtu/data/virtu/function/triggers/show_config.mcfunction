tellraw @s [\
    {"text":"Healthscore Current Config:\n","color":"green","italic":false},\
    {"text":"BaseDmgMod","color":"gold","hover_event":{"action":"show_text","value":[\
        {"text":"Base Damage Modification (default is\n115%--or +15%--damage taken overall)","color":"gray","italic":false}]}},{"text":": ","color":"gold"},{"score":{"name":"$config","objective":"sbhp.config.BaseDmgMod"},"color":"gold"},{"text":"\n"},\
    {"text":"DmgWaitTime","color":"red","hover_event":{"action":"show_text","value":[\
        {"text":"After taking damage, how many\nfull seconds should elapse before\nhealing (default is 5 seconds)","color":"gray","italic":false}]}},{"text":": ","color":"red"},{"score":{"name":"$config","objective":"sbhp.config.DmgWait"},"color":"red"},{"text":"\n"},\
    {"text":"HealTimeMax","color":"gold","hover_event":{"action":"show_text","value":[\
        {"text":"Seconds for Healing to reach its\npeak (Default is 20 seconds)","color":"gray","italic":false}]}},{"text":": ","color":"gold"},{"score":{"name":"$config","objective":"sbhp.config.HealTimeMax"},"color":"gold"},{"text":"\n"},\
    {"text":"RespawnHealth","color":"red","hover_event":{"action":"show_text","value":[\
        {"text":"Respawn Health Amount (in %\nof Max HP, default is 80%)","color":"gray","italic":false}]}},{"text":": ","color":"red"},{"score":{"name":"$config","objective":"sbhp.config.RespawnHealth"},"color":"red"},{"text":"\n"},\
    {"text":"DmgIndOn","color":"gold","hover_event":{"action":"show_text","value":[\
        {"text":"If damage numbers should show\nabove players who take damage","color":"gray","italic":false}]}},{"text":": ","color":"red"},{"score":{"name":"$config","objective":"sbhp.config.DmgIndOn"},"color":"gold"},{"text":"\n"},\
    {"text":"DefaultDmgColor","color":"red","hover_event":{"action":"show_text","value":[\
        {"text":"Default color of damage text\nthat appears if DmgIndOn = 1.\nColors are:\n1 - Black  |  2 - White\n3 - Red  |  4 - Gold\n5 - Yellow  |  6 - Green\n7 - Aqua  |  8 - Purple","color":"gray","italic":false}]}},{"text":": ","color":"red"},{"score":{"name":"$config","objective":"sbhp.config.DefaultDmgColor"},"color":"red"},{"text":"\n"}\
]

scoreboard players reset @s sbhp.trigger.ShowConfig
scoreboard players enable @s sbhp.trigger.ShowConfig