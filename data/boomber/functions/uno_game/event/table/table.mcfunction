execute as @s positioned ~ ~ ~ unless block ~ ~ ~ #minecraft:wooden_slabs run function boomber:uno_game/event/table/destroy
execute as @s run data merge entity @s {Fire:2s}
execute as @s run effect give @e[type=villager,tag=boomber.uno_game.table_interaction,distance=..1] invisibility 100000 255 true

execute as @s[tag=boomber.uno_game.end] run function boomber:uno_game/event/game/end

execute as @s[tag=boomber.uno_game.start,tag=!boomber.uno_game.playing] run function boomber:uno_game/event/game/playing
execute as @s[tag=boomber.uno_game.start,tag=boomber.uno_game.playing] as @a[tag=boomber.uno_game.joined,tag=boomber.uno_game.game.wild,distance=..8,scores={bb.wildColor=1..}] run function boomber:uno_game/event/game/choose_color
