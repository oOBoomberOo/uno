execute as @s run tellraw @s [{"nbt":"ArmorItems[{tag:{boomber:{id:\"uno_table\"}}}].tag.boomber.uno_game.checking_card.display.Name","entity":"@e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest]","interpret": true}, {"text":" cannot be play"}]

execute as @s store result score #bb.uno.card bb.variable run data get entity @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card.boomber.uno_game.card[0]
execute as @s store result score #bb.uno.color bb.variable run data get entity @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card.boomber.uno_game.color[0]

execute as @s if score #bb.uno.color bb.variable matches 0 run function boomber:uno_game/event/draw/red
execute as @s if score #bb.uno.color bb.variable matches 1 run function boomber:uno_game/event/draw/green
execute as @s if score #bb.uno.color bb.variable matches 2 run function boomber:uno_game/event/draw/blue
execute as @s if score #bb.uno.color bb.variable matches 3 run function boomber:uno_game/event/draw/yellow

execute as @s if score #bb.uno.color bb.variable matches 4 if score #bb.uno.card bb.variable matches 12 run drop player @s loot boomber:items/uno_game/wild/draw_4
execute as @s run data modify entity @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card set value {}
execute as @s as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] run tag @s remove boomber.uno_game.playing