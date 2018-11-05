scoreboard players set #boomber.randomizer.random_1.input.min bb.variable 0
scoreboard players set #boomber.randomizer.random_1.input.max bb.variable 12
function boomber:randomizer/random/custom
scoreboard players operation #bb.uno.card bb.variable = #boomber.randomizer.result bb.variable

scoreboard players set #boomber.randomizer.random_1.input.min bb.variable 0
scoreboard players set #boomber.randomizer.random_1.input.max bb.variable 4
function boomber:randomizer/random/custom
scoreboard players operation #bb.uno.color bb.variable = #boomber.randomizer.result bb.variable

execute as @s if score #bb.uno.color bb.variable matches 0 run function boomber:uno_game/event/draw/red
execute as @s if score #bb.uno.color bb.variable matches 1 run function boomber:uno_game/event/draw/green
execute as @s if score #bb.uno.color bb.variable matches 2 run function boomber:uno_game/event/draw/blue
execute as @s if score #bb.uno.color bb.variable matches 3 run function boomber:uno_game/event/draw/yellow