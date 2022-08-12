execute as @a[tag=!tse_cooldown,scores={tse_OntimeHours=0,tse_OntimeMinute=0,tse_OntimeSecond=0..5}] run function tser_main:loot_boxes/check
execute as @a[tag=!tse_cooldown,scores={tse_OntimeHours=8,tse_OntimeMinute=0,tse_OntimeSecond=0..5}] run function tser_main:loot_boxes/check
execute as @a[tag=!tse_cooldown,scores={tse_OntimeHours=16,tse_OntimeMinute=0,tse_OntimeSecond=0..5}] run function tser_main:loot_boxes/check
execute as @a[scores={tse_OntimeDays=4..}] run tag @s add tse.significant
execute as @a[scores={tse_lootbox=1..}] if score @s c.inv.curr matches 1 run function tser_main:loot_boxes/checkheld
execute as @a[tag=tse_cooldown,scores={tse_OntimeSecond=6..59}] run tag @s remove tse_cooldown