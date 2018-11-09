scoreboard players set #boomber.randomizer.random_1.input.min bb.variable 0
scoreboard players set #boomber.randomizer.random_1.input.max bb.variable 1
function boomber:randomizer/random/custom
scoreboard players operation #bb.uno.card bb.variable = #boomber.randomizer.result bb.variable

execute as @s if score #bb.uno.card bb.variable matches 0 run loot give @s loot boomber:items/uno_game/wild/draw_4