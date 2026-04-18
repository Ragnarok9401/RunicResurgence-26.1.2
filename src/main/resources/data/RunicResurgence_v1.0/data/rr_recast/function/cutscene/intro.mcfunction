tellraw @s[scores={rr.system.cutscene_index=..0}] [{"text":"\"As the stars unveil themselves behind the sun's fading brilliance, you feel as though the heavens are whispering to you...\nThree voices are faint at first, but grow in strength until they drown out all other noise.\"","color":"gray","italic":false}]
scoreboard players set @s[scores={rr.system.cutscene_index=..0}] rr.system.cutscene_index 1

tellraw @s[scores={rr.system.cutscene_index=8}] [{"text":"<???> ","color":"white","italic":false},{"text":"...for years. It makes no sense to suddenly want to take a route this... drastic, especially when we have no idea what's going on for sure.","color":"aqua","italic":false,"font":"rr_recast:indifference"}]

tellraw @s[scores={rr.system.cutscene_index=16}] [{"text":"<???> ","color":"white","italic":false},{"text":"Like I said, I had a vision. Yeah, it's sudden. But after that night, I can't stop having disturbing thoughts about it.","color":"gold","italic":false,"font":"rr_recast:impatience"}]

tellraw @s[scores={rr.system.cutscene_index=24}] [{"text":"<???> ","color":"white","italic":false},{"text":"Might have had a vision.","color":"aqua","italic":false,"font":"rr_recast:indifference"}]

tellraw @s[scores={rr.system.cutscene_index=26}] [{"text":"<???> ","color":"white","italic":false},{"text":"Definitely had a vision!","color":"gold","italic":true,"font":"rr_recast:impatience"}]

tellraw @s[scores={rr.system.cutscene_index=28}] [{"text":"<???> ","color":"white","italic":false},{"text":"I don't think it's smart to make any decisions before we know more about this. I mean, I'm not one to ignore a message from the gods themselves, but even so, I agree with ","color":"green","italic":false,"font":"rr_recast:impedence"},{"text":"Glavier","color":"dark_red","italic":false,"obfuscated":true,"font":"minecraft:default"},{"text":" here when he says we should be cautious.","color":"green","italic":false,"font":"rr_recast:impedence","obfuscated":false}]

scoreboard players add @s rr.system.cutscene_index 1