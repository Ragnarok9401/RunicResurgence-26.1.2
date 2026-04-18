
# Note that editing JUST the displayed number here requires editing "text.extra[0].text" in a /data command
summon text_display ~ ~ ~ \
{\
    alignment:center,\
    billboard:"vertical",\
    view_range:5.00,\
    shadow:false,\
    interpolation_duration:30,\
    transformation:\
    {\
        left_rotation:{angle:0f,axis:[0.0f,0.0f,0.0f]},\
        right_rotation:{angle:0f,axis:[0.0f,0.0f,0.0f]},\
        scale:[0.75f,0.75f,0.75f],\
        translation:[0.0f,0.0f,0.0f]\
    },\
    text:{"text":""},\
    background:false,\
    Tags:["SBHPDmgDisplay","SBHPDmgDisplayInit"]\
}

# Insert Damage Taken score to TextDisplay's score
execute store result score @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.A run scoreboard players get @s rr.system.dmg_taken
execute store result score @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.B run scoreboard players get @s rr.system.dmg_taken

# Convert to two different values so that the damage can be displayed in a -X.XX format
scoreboard players set @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.C 100
scoreboard players operation @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.A /= @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.C
scoreboard players operation @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.B %= @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] sbhp.math.C

# Set the damage text
data modify entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] text set value {"text":"♡ -","color":"red","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.A"}},{"text":"."},{"score":{"name":"@s","objective":"sbhp.math.B"}}]}

# Set color value from the config option set in /trigger setDmgColor
data modify entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] text.color set from storage sbhp:config dmg_color

# Set small random X motion offset (between -0.03 and 0.03)
execute store result score sbhp.Global sbhp.math.rand1 run random value -35..35
execute store result entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] transformation.translation[0] float 0.01 run scoreboard players get sbhp.Global sbhp.math.rand1

# Set small random Z motion offset (between -0.03 and 0.03)
execute store result score sbhp.Global sbhp.math.rand1 run random value -35..35
execute store result entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] transformation.translation[2] float 0.01 run scoreboard players get sbhp.Global sbhp.math.rand1

# Set other Interpolation fields to animate
data modify entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] transformation.scale set value [0.15f,0.15f,0.15f]
data modify entity @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.01] transformation.translation[1] set value 0.5f

# Teleport Text Display up slightly so it appears above the player, and remove the Init tag so it can't be modified further
tp @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..0.25] ~ ~2 ~
tag @n[type=text_display,tag=SBHPDmgDisplayInit,tag=SBHPDmgDisplay,distance=..2.25] remove SBHPDmgDisplayInit