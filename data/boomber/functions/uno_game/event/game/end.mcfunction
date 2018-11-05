execute as @s run tag @s remove boomber.uno_game.start
execute as @s run tag @s remove boomber.uno_game.playing
execute as @s run tag @s remove boomber.uno_game.end
execute as @s as @a[tag=boomber.uno_game.joined, scores={bb.cardCount=..0}, distance=..5] run tellraw @a[tag=boomber.uno_game.joined, distance=..5] [{"selector":"@s","color":"gold"},{"text":" has won the game!"}]
execute as @s as @a[tag=boomber.uno_game.joined, distance=..5] run scoreboard players set @s bb.leave 1
execute as @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:note_block", Count:1b, tag:{boomber:{id:"uno_table", from:"boomber:uno_game", author:"boomber", uno_game:{current_card:{}, checking_card:{} }}}}]}
execute as @s run data merge entity @e[type=armor_stand, tag=boomber.uno_game.table_display, distance=..1, limit=1] {CustomName:"{\"text\":\"Uno!\"}"}
execute as @s run particle flame ~ ~0.1 ~ 0.5 0.5 0.5 0.1 100 normal @a
execute as @s run scoreboard players set @s bb.playerCount 0
execute as @s as @a[tag=boomber.uno_game.joined, distance=..8] run playsound minecraft:entity.firework_rocket.large_blast voice @s ~ ~ ~ 2 1 1