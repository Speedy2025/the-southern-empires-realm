summon panda ~ ~1 ~ {Tags:["tse.newtarget"]}
data modify entity @e[tag=tse.newtarget,limit=1] {} merge from storage rx.playerdb:io player.data.tse.scanned.attributes

data remove storage rx.playerdb:io player.data.tse.scanned

tag @e remove tse.newtarget
tellraw @a[tag=tse.target] ["",{"text":"[TSE] ","color":"green"},{"text":" Summoned the entity. Repeat to store an entity."}]