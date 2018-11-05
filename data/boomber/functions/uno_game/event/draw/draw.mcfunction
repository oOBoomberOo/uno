function boomber:randomizer/random/0-100
scoreboard players operation #bb.uno.wild bb.variable = #boomber.randomizer.result bb.variable

execute as @s if score #bb.uno.wild bb.variable matches ..90 run function boomber:uno_game/event/draw/normal
execute as @s if score #bb.uno.wild bb.variable matches 91.. run function boomber:uno_game/event/draw/wild