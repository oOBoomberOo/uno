execute as @s run setblock ~ ~ ~ air destroy
execute as @s run drop world ~ ~ ~ loot boomber:items/uno_game/uno_table
execute as @s run data merge entity @e[type=villager,tag=boomber.uno_game.table_interaction,limit=1,distance=..1] {Health:0.0f, DeathTime:19}
execute as @s run kill @e[type=armor_stand,tag=boomber.uno_game.table_display, limit=1, distance=..1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:oak_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:spruce_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:jungle_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:birch_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:acacia_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @e[type=item, nbt={Item:{id:"minecraft:dark_oak_slab", Count:1b}, Age:0s}, distance=..1.5, limit=1]
execute as @s run kill @s