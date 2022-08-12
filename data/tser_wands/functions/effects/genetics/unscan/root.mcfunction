#Context: whatever entity it is

execute as @a[tag=tse.target] run function #rx.playerdb:api/v2/get/self

execute unless data storage rx.playerdb:io player.data.tse.scanned run tellraw @a[tag=tse.target] ["",{"text":"[TSE] ","color":"green"},{"text":" There is not an entity stored. Please store an entity before summoning one."}]
execute if data storage rx.playerdb:io player.data.tse.scanned run function tser_wands:effects/genetics/unscan/get_entity

scoreboard players set @a[tag=tse.target] tse_raylength 0
execute as @a[tag=tse.target] run function #rx.playerdb:api/v2/save/self