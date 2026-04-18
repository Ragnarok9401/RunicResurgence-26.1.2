# Get Spell ID that the player is trying to guess correctly, separate by digit, compare to respective guess, output result
execute store result score @s rr.math.A run data get entity @s data.spell_script.id
scoreboard players set @s rr.math.index 0

# Get first digit (/10000)
scoreboard players set @s rr.math.B 10000
scoreboard players operation @s rr.math.A /= @s rr.math.B
# Get guess_1
execute store result score @s rr.math.B run data get entity @s data.minigame.guess_1

# Set "output" to red as a fallback
data modify entity @s data.minigame.guess_1_output set value "red"

# If Guess 1 is equal to first digit, set "output" to green
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_1_output set value "green"
execute if score @s rr.math.A = @s rr.math.B run scoreboard players add @s rr.math.index 1

# If Guess 1 is one greater or less than the first digit, set "output" to yellow
# Note that if the scores reach 10 or 0, they loop around to 1 or 9, respectively
## Less than
scoreboard players operation @s rr.math.C = @s rr.math.A
scoreboard players add @s rr.math.A 1
execute if score @s rr.math.A matches 10 run scoreboard players set @s rr.math.A 1
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_1_output set value "yellow"
## Greater than
scoreboard players operation @s rr.math.A = @s rr.math.C
scoreboard players remove @s rr.math.A 1
execute if score @s rr.math.A matches 0 run scoreboard players set @s rr.math.A 9
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_1_output set value "yellow"


# Repeat
# Get Spell ID that the player is trying to guess correctly, separate by digit, compare to respective guess, output result
execute store result score @s rr.math.A run data get entity @s data.spell_script.id

# Get second digit (%10000, /1000)
scoreboard players set @s rr.math.B 10000
scoreboard players operation @s rr.math.A %= @s rr.math.B
scoreboard players set @s rr.math.B 1000
scoreboard players operation @s rr.math.A /= @s rr.math.B
# Get guess_2
execute store result score @s rr.math.B run data get entity @s data.minigame.guess_2

# Set "output" to red as a fallback
data modify entity @s data.minigame.guess_2_output set value "red"

# If Guess 2 is equal to first digit, set "output" to green
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_2_output set value "green"
execute if score @s rr.math.A = @s rr.math.B run scoreboard players add @s rr.math.index 1

# If Guess 2 is one greater or less than the first digit, set "output" to yellow
# Note that if the scores reach 10 or 0, they loop around to 1 or 9, respectively
## Less than
scoreboard players operation @s rr.math.C = @s rr.math.A
scoreboard players add @s rr.math.A 1
execute if score @s rr.math.A matches 10 run scoreboard players set @s rr.math.A 1
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_2_output set value "yellow"
## Greater than
scoreboard players operation @s rr.math.A = @s rr.math.C
scoreboard players remove @s rr.math.A 1
execute if score @s rr.math.A matches 0 run scoreboard players set @s rr.math.A 9
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_2_output set value "yellow"


# Repeat
# Get Spell ID that the player is trying to guess correctly, separate by digit, compare to respective guess, output result
execute store result score @s rr.math.A run data get entity @s data.spell_script.id

# Get third digit (%1000, /100)
scoreboard players set @s rr.math.B 1000
scoreboard players operation @s rr.math.A %= @s rr.math.B
scoreboard players set @s rr.math.B 100
scoreboard players operation @s rr.math.A /= @s rr.math.B
# Get guess_3
execute store result score @s rr.math.B run data get entity @s data.minigame.guess_3

# Set "output" to red as a fallback
data modify entity @s data.minigame.guess_3_output set value "red"

# If Guess 3 is equal to first digit, set "output" to green
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_3_output set value "green"
execute if score @s rr.math.A = @s rr.math.B run scoreboard players add @s rr.math.index 1

# If Guess 3 is one greater or less than the first digit, set "output" to yellow
# Note that if the scores reach 10 or 0, they loop around to 1 or 9, respectively
## Less than
scoreboard players operation @s rr.math.C = @s rr.math.A
scoreboard players add @s rr.math.A 1
execute if score @s rr.math.A matches 10 run scoreboard players set @s rr.math.A 1
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_3_output set value "yellow"
## Greater than
scoreboard players operation @s rr.math.A = @s rr.math.C
scoreboard players remove @s rr.math.A 1
execute if score @s rr.math.A matches 0 run scoreboard players set @s rr.math.A 9
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_3_output set value "yellow"


# Repeat
# Get Spell ID that the player is trying to guess correctly, separate by digit, compare to respective guess, output result
execute store result score @s rr.math.A run data get entity @s data.spell_script.id

# Get fourth digit (%100, /10)
scoreboard players set @s rr.math.B 100
scoreboard players operation @s rr.math.A %= @s rr.math.B
scoreboard players set @s rr.math.B 10
scoreboard players operation @s rr.math.A /= @s rr.math.B
# Get guess_4
execute store result score @s rr.math.B run data get entity @s data.minigame.guess_4

# Set "output" to red as a fallback
data modify entity @s data.minigame.guess_4_output set value "red"

# If Guess 4 is equal to first digit, set "output" to green
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_4_output set value "green"
execute if score @s rr.math.A = @s rr.math.B run scoreboard players add @s rr.math.index 1

# If Guess 4 is one greater or less than the first digit, set "output" to yellow
# Note that if the scores reach 10 or 0, they loop around to 1 or 9, respectively
## Less than
scoreboard players operation @s rr.math.C = @s rr.math.A
scoreboard players add @s rr.math.A 1
execute if score @s rr.math.A matches 10 run scoreboard players set @s rr.math.A 1
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_4_output set value "yellow"
## Greater than
scoreboard players operation @s rr.math.A = @s rr.math.C
scoreboard players remove @s rr.math.A 1
execute if score @s rr.math.A matches 0 run scoreboard players set @s rr.math.A 9
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_4_output set value "yellow"


# Repeat
# Get Spell ID that the player is trying to guess correctly, separate by digit, compare to respective guess, output result
execute store result score @s rr.math.A run data get entity @s data.spell_script.id

# Get fifth digit (%10)
scoreboard players set @s rr.math.B 10
scoreboard players operation @s rr.math.A %= @s rr.math.B
# Get guess_5
execute store result score @s rr.math.B run data get entity @s data.minigame.guess_5

# Set "output" to red as a fallback
data modify entity @s data.minigame.guess_5_output set value "red"

# If Guess 5 is equal to first digit, set "output" to green
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_5_output set value "green"
execute if score @s rr.math.A = @s rr.math.B run scoreboard players add @s rr.math.index 1

# If Guess 5 is one greater or less than the first digit, set "output" to yellow
# Note that if the scores reach 10 or 0, they loop around to 1 or 9, respectively
## Less than
scoreboard players operation @s rr.math.C = @s rr.math.A
scoreboard players add @s rr.math.A 1
execute if score @s rr.math.A matches 10 run scoreboard players set @s rr.math.A 1
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_5_output set value "yellow"
## Greater than
scoreboard players operation @s rr.math.A = @s rr.math.C
scoreboard players remove @s rr.math.A 1
execute if score @s rr.math.A matches 0 run scoreboard players set @s rr.math.A 9
execute if score @s rr.math.A = @s rr.math.B run data modify entity @s data.minigame.guess_5_output set value "yellow"


# Change scores and data to match that this guess has been used up
execute store result score @s rr.math.A run data get entity @s data.spell_script.attempts
execute if data entity @s data.minigame.used store result score @s rr.math.B run data get entity @s data.minigame.used
execute unless data entity @s data.minigame.used run scoreboard players set @s rr.math.B 0
execute store result entity @s data.spell_script.attempts int 1 run scoreboard players remove @s rr.math.A 1
execute store result entity @s data.spell_script.used int 1 run scoreboard players add @s rr.math.B 1
execute store result entity @s data.minigame.attempts int 1 run scoreboard players get @s rr.math.A
execute store result entity @s data.minigame.used int 1 run scoreboard players get @s rr.math.B

# If needed, convert guesses into other font/letters
function rr_recast:technical/block/scriptscrying_table/arcane/convert_guesses

# Set a Cooldown tag so sounds can play per number guessed, one at a time, in sequence
# After this, the guessing opens back up
execute unless score @s rr.math.X matches 0.. run scoreboard players set @s rr.math.X 0
#tag @s add rr.block.scriptscrying_table.main.guess_cooldown


function rr_recast:technical/block/scriptscrying_table/arcane/set_guess_text with entity @s data.minigame