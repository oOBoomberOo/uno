execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run function boomber:uno_game/event/draw/draw
execute as @s run tag @s add boomber.uno_game.start
execute as @s run tellraw @a[tag=boomber.uno_game.joined,distance=..8] [{"text":"Game start!!","color":"green"}]
execute as @s run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.2 100 normal @a
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] run scoreboard players reset @s bb.start 