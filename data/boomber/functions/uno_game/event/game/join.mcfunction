scoreboard players set #bb.uno.join.error bb.variable 0
execute as @s unless entity @e[type=armor_stand,tag=boomber.uno_game.table,tag=!boomber.uno_game.start,distance=..8] run scoreboard players set #bb.uno.join.error bb.variable -1
execute as @s if score #bb.uno.join.error bb.variable matches ..-1 run tellraw @s [{"text":"No Uno game nearby","color":"red"}]
execute as @s if score #bb.uno.join.error bb.variable matches ..-1 run scoreboard players reset @s bb.join
execute as @s if score #bb.uno.join.error bb.variable matches 0 run tag @s add boomber.uno_game.joined
execute as @s if score #bb.uno.join.error bb.variable matches 0 run trigger bb.join
execute as @s if score #bb.uno.join.error bb.variable matches 0 run scoreboard players enable @s bb.leave
execute as @s if score #bb.uno.join.error bb.variable matches 0 run scoreboard players enable @s bb.start
execute as @s if score #bb.uno.join.error bb.variable matches 0 run tellraw @s [{"text":"You've join Uno game", "color":"yellow"}]
