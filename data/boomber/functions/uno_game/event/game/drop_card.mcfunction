execute as @s as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] run tag @s add boomber.uno_game.playing
execute as @s run scoreboard players set @s bb.dropCard 0

# Copy card's data to uno table
execute as @s as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] run data modify entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card set from entity @e[type=item,distance=..8,limit=1,nbt={Item:{tag:{boomber:{id:"uno_card"}}}}] Item.tag
execute as @s run kill @e[type=item,limit=1,distance=..8,nbt={Item:{tag:{boomber:{id:"uno_card"}}}}]

# Check if "current_card" is empty
execute as @s as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] unless data entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card.boomber run function boomber:uno_game/event/game/next_turn
execute as @s unless data entity @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card.boomber run tag @s add boomber.uno_game.game.check.pass
execute as @s as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] unless data entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card.boomber run data modify entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card set from entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card

# If "current_card" is not empty run function boomber:uno_game/event/game/check
execute as @s if data entity @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card.boomber run function boomber:uno_game/event/game/check

# If check is pass but not a wild
execute as @s[tag=boomber.uno_game.game.check.pass,tag=!boomber.uno_game.game.wild] as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] run data modify entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.current_card set from entity @s ArmorItems[{tag:{boomber:{id:"uno_table"}}}].tag.boomber.uno_game.checking_card
execute as @s[tag=boomber.uno_game.game.check.pass,tag=!boomber.uno_game.game.wild] run tellraw @a[tag=boomber.uno_game.joined,distance=..8] [{"selector":"@s"},{"text":" play "},{"nbt":"ArmorItems[{tag:{boomber:{id:\"uno_table\"}}}].tag.boomber.uno_game.current_card.display.Name","entity":"@e[type=armor_stand,tag=boomber.uno_game.table,distance=..1,limit=1]", "interpret": true}]
execute as @s[tag=boomber.uno_game.game.check.pass,tag=!boomber.uno_game.game.wild] as @e[type=armor_stand,tag=boomber.uno_game.table,limit=1,distance=..8,sort=nearest] run function boomber:uno_game/event/game/next_turn

# If nothing pass
execute as @s[tag=!boomber.uno_game.game.check.pass,tag=!boomber.uno_game.game.wild] run function boomber:uno_game/event/game/check/fail

execute as @s[tag=boomber.uno_game.game.check.pass,tag=boomber.uno_game.game.wild] run function boomber:uno_game/event/game/wild

execute as @s run tag @s remove boomber.uno_game.game.check.pass

execute as @s store result score @s bb.cardCount run clear @s minecraft:paper{boomber:{id:"uno_card"}} 0
execute as @s[scores={bb.cardCount=1}] run tellraw @a[tag=boomber.uno_game.joined, distance=..8] [{"selector":"@s"},{"text":" is on Uno!", "color":"yellow"}]
