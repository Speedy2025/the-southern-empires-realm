tag @s add tse_cooldown
function tser_main:loot_boxes/inventorysize
execute unless score $length tse_lootbox matches 36 run function tser_main:loot_boxes/recieve
execute unless score $length tse_lootbox matches 36 run scoreboard players remove @s tse_lootbox 1
execute if score @s tse_lootbox matches 1.. store result score $length tse_lootbox run clear @s chest{BlockEntityTag:{LootTable:"tser_main:8hourchest_a"}} 0
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run function tser_main:loot_boxes/recieve
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run scoreboard players remove @s tse_lootbox 1
execute if score @s tse_lootbox matches 1.. store result score $length tse_lootbox run clear @s chest{BlockEntityTag:{LootTable:"tser_main:8hourchest_b"}} 0
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run function tser_main:loot_boxes/recieve
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run scoreboard players remove @s tse_lootbox 1
execute if score @s tse_lootbox matches 1.. store result score $length tse_lootbox run clear @s chest{BlockEntityTag:{LootTable:"tser_main:8hourchest_c"}} 0
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run function tser_main:loot_boxes/recieve
execute if score @s tse_lootbox matches 1.. if score $length tse_lootbox matches 1.. run scoreboard players remove @s tse_lootbox 1