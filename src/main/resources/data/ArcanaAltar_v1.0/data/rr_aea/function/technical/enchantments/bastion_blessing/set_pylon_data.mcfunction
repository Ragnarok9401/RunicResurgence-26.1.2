# Set data to Aura in shield entity
# Note that Bastion creates a slightly weaker and unmodifiable version of the default Paladin Pylon
data modify entity @s data.aura set value {\
        radius:2.5f,\
        reference:paladin_pylon,\
        movement:\
        {\
            stationary:{}\
        },\
        lifespan:100,\
        health:150.00f,\
        display:\
        {\
            item_display:\
            {\
                item_display:"head",\
                CustomName:[{"text":"Paladin's Pylon","color":"aqua","italic":false}],\
                CustomNameVisible:false,\
                teleport_duration:1,\
                billboard:"vertical",\
                Tags:\
                [\
                    "rr.setup.paladin_pylon",\
                    "rr.aura.paladin_pylon",\
                    "rr.aura",\
                    "rr.entity",\
                    "rr.spell.ticking"\
                ],\
                brightness:\
                {\
                    sky:12,\
                    block:10\
                },\
                transformation:\
                {\
                    left_rotation:[0f,0f,0f,1f],\
                    right_rotation:[0f,0f,0f,1f],\
                    translation:[0f,1.0f,0f],\
                    scale:[1f,1f,1f]\
                },\
                item:\
                {\
                    id:"minecraft:music_disc_cat",\
                    count:1,\
                    components:\
                    {\
                    item_model:"rr_recast:spell/paladin_pylon/shield_a",\
                    }\
                },\
            },\
            reference:paladin_pylon,\
            particle:\
            {\
                particle:"dust{scale:0.8,color:[0.25,0.65,0.65]} ~ ~0.125 ~ 1.25 0 1.25 0.01 3 normal @a[distance=..30]",\
                id:"minecraft:dust{\"scale\":0.8,\"color\":[0.25,0.65,0.65]}",\
                amount:2,\
                distance:[2.4f,0.0f,2.4f],\
                offset:[0.0f,0.125f,0.0f],\
                force:"normal",\
                show_to:"@a[distance=..30]",\
                speed:0.01f\
            },\
            border:\
            {\
                particle:"dust{scale:0.5,color:[0,1,1]} ~ ~0.125 ~ 0.1 0 0.1 0.01 1 force @a[distance=..8]",\
                id:"dust{scale:0.65,color:[0,1,1]}",\
                count:1,\
                nodes:12,\
                distance_x:0.0f,\
                distance_y:0.0f,\
                distance_z:0.0f,\
                offset_x:0.0f,\
                offset_y:0.125f,\
                offset_z:0.0f,\
                force:"force @a[distance=..8]",\
                distance_shown:8.0f,\
                speed:0.01f,\
                radius:0.1,\
                reference:paladin_pylon\
            }\
        }\
    }

# Set Border Radius in separate function so Aura is set to appropriate data
function rr_recast:spells/core/functions/aura/set_border_radius

# Border Creation and math
execute at @s run function rr_recast:math/get_circle_angles with entity @s data.aura.display.border
scoreboard players set @s rr.math.X 1
execute at @s run function rr_recast:spells/core/functions/aura/make_border with entity @s data.aura.display.border
$execute as @e[distance=..0.1,tag=rr.border.$(reference),type=marker] run data modify entity @s data.aura.display.border set from entity @n[distance=..0.1,tag=rr.aura.$(reference),type=item_display] data.aura.display.border