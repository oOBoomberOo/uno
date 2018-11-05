execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"uno\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"Uno\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"uNo\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"unO\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"UNo\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"uNO\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"UnO\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:paper", tag:{display:{Name:"{\"text\":\"UNO\"}"}}}, Facing:1b}] run function boomber:uno_game/event/table/check_table

execute as @e[type=armor_stand,tag=boomber.uno_game.table] at @s positioned ~ ~0.169 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:uno_game/event/table/table

execute as @a[tag=!boomber.uno_game.joined] run scoreboard players enable @s bb.join
execute as @a[tag=!boomber.uno_game.joined] if score @s bb.join matches 1.. at @s run function boomber:uno_game/event/game/join
execute as @a[tag=boomber.uno_game.joined] if score @s bb.leave matches 1.. at @s run function boomber:uno_game/event/game/leave
execute as @a[tag=boomber.uno_game.joined] if score @s bb.start matches 1.. at @s as @e[type=armor_stand,tag=boomber.uno_game.table,tag=!boomber.uno_game.start,distance=..8] at @s run function boomber:uno_game/event/game/start

execute as @a[tag=boomber.uno_game.joined] at @s unless entity @e[type=armor_stand,tag=boomber.uno_game.table,distance=..9] run scoreboard players set @s bb.leave 1

execute as @a[tag=!boomber.uno_game.joined,scores={bb.interact=1..}] run scoreboard players set @s bb.interact 0
execute as @a[tag=!boomber.uno_game.joined,scores={bb.dropCard=1..}] run scoreboard players set @s bb.dropCard 0

execute as @a[tag=!boomber.uno_game.joined] if score @s bb.start matches 1.. run scoreboard players set @s bb.start 0
execute as @a if score @s bb.wildColor matches 1.. run scoreboard players set @s bb.wildColor 0