execute store result score $length tse_lootbox run data get entity @s Inventory
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove $length tse_lootbox 1
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove $length tse_lootbox 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove $length tse_lootbox 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove $length tse_lootbox 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove $length tse_lootbox 1
