execute as @s as @a[tag=boomber.uno_game.joined, distance=..8] run trigger bb.wildCard set 0

execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] if score @s bb.interact matches 1.. run function boomber:uno_game/event/game/draw
execute as @s as @a[tag=boomber.uno_game.joined,distance=..8,scores={bb.dropCard=1..}] run function boomber:uno_game/event/game/drop_card

execute as @s run data modify entity @e[type=armor_stand,tag=boomber.uno_game.table_display, distance=..1, limit=1] CustomName set from entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card.display.Name

execute as @s as @a[tag=boomber.uno_game.joined,distance=..8] store result score @s bb.cardCount run clear @s minecraft:paper{boomber:{id:"uno_card"}} 0
execute as @s store result score @s bb.playerCount if entity @a[tag=boomber.uno_game.joined,distance=..8]

execute as @s if entity @a[tag=boomber.uno_game.joined, distance=..8, scores={bb.cardCount=..0}] run tag @s add boomber.uno_game.end
execute as @s if score @s bb.playerCount matches ..0 run tag @s add boomber.uno_game.end
