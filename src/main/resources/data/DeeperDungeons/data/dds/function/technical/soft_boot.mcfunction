

scoreboard objectives add dds.PlayerUUID1 dummy
scoreboard objectives add dds.PlayerUUID2 dummy
scoreboard objectives add dds.PlayerUUID3 dummy
scoreboard objectives add dds.PlayerUUID4 dummy

scoreboard objectives add dds.UUID1Match dummy
scoreboard objectives add dds.UUID2Match dummy
scoreboard objectives add dds.UUID3Match dummy
scoreboard objectives add dds.UUID4Match dummy

execute if function rr_recast:technical/pack_enabled run data modify storage dds:structure_data rr_recast.ancient_crypt.start_template set value "rr_recast:ancient_crypt/arenas/arena_a"

schedule function sbhp:technical/second 1s replace
# schedule function sbhp:technical/6s 6s replace
# schedule function sbhp:technical/5s 5s replace
# schedule function sbhp:technical/3s 3s replace
# schedule function sbhp:technical/3min 60s replace
# schedule function sbhp:technical/10min 60s replace
# schedule function sbhp:technical/4tick 4t replace
# schedule function sbhp:technical/2tick 2t replace
# schedule function sbhp:technical/5tick 5t replace
# schedule function sbhp:technical/10tick 10t replace

tellraw @a [{"text":"[Deeper Dungeons] ","color":"gray"},{"text":"Deeper Dungeons has loaded successfully","color":"light_purple"}]