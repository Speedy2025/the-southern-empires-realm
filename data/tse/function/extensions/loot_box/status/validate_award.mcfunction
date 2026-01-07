execute store result score #length tse_lootbox run data get entity @s Inventory
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove #length tse_lootbox 1
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove #length tse_lootbox 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove #length tse_lootbox 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove #length tse_lootbox 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove #length tse_lootbox 1
execute store success score #temp tse_lootbox run clear @s chest[minecraft:block_entity_data={id:"chest","LootTable":"tse:loot_box/base"}] 0
scoreboard players operation #length tse_lootbox -= #temp tse_lootbox
execute unless score #length tse_lootbox matches 36 run function tse:extensions/loot_box/award