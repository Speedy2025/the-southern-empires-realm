tag @s add tse_cooldown
execute as @s run function tser_main:loot_boxes/inventorysize
scoreboard players add @s ss.currency 1000
execute unless score @s c.inv.curr matches 1 run scoreboard players add @s tse_lootbox 1
execute if score $length tse_lootbox matches 36 if score @s c.inv.curr matches 1 run scoreboard players add @s tse_lootbox 1
execute if score $length tse_lootbox matches 36 if score @s c.inv.curr matches 1 run tellraw @s ["",{"text":"[Loot] ","color":"green"},{"text":"Your inventory is too full! Please clear a slot to claim your loot box(s)."}]
execute unless score $length tse_lootbox matches 36 if score @s c.inv.curr matches 1 run function tser_main:loot_boxes/recieve
