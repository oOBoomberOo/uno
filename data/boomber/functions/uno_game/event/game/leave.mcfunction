execute as @s run scoreboard players reset @s bb.join
execute as @s run scoreboard players reset @s bb.leave
execute as @s run tag @s remove boomber.uno_game.joined
execute as @s run tag @s remove boomber.uno_game.game.wild
execute as @s run clear @s minecraft:paper{boomber:{id:"uno_card"}}
execute as @s run tellraw @s [{"text":"You've left Uno game", "color":"red"}]