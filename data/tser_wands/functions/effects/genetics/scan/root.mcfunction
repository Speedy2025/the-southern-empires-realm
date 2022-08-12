#Context: whatever entity it is

execute as @a[tag=tse.target] run function #rx.playerdb:api/v2/get/self

execute if data storage rx.playerdb:io player.data.tse.scanned run tellraw @a[tag=tse.target] ["",{"text":"[TSE] ","color":"green"},{"text":" There is already an entity stored, please summon it on a solid block before trying to store another."}]
execute unless data storage rx.playerdb:io player.data.tse.scanned run function tser_wands:effects/genetics/scan/get_entity

scoreboard players set @a[tag=tse.target] tse_raylength 0
execute as @a[tag=tse.target] run function #rx.playerdb:api/v2/save/self