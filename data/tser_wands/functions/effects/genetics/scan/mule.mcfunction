data modify storage rx.playerdb:io player.data.tse.scanned.attributes set from entity @s {}
data modify storage rx.playerdb:io player.data.tse.scanned.type set value "minecraft:mule"
data remove storage rx.playerdb:io player.data.tse.scanned.attributes.Pos
data modify storage rx.playerdb:io player.data.tse_lobby.scanned.attributes set from entity @s {}
data modify storage rx.playerdb:io player.data.tse_lobby.scanned.type set value "minecraft:mule"
data remove storage rx.playerdb:io player.data.tse_lobby.scanned.attributes.Pos


tp @s ~ ~-10000 ~
tellraw @a[tag=tse.target] ["",{"text":"[TSE] ","color":"green"},{"text":" Scanned and stored entity. Repeat to summon the entity."}]