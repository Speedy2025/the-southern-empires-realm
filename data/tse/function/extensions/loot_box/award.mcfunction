give @s minecraft:chest[minecraft:block_entity_data={id:"chest","LootTable":"tse:loot_box/base"},minecraft:custom_name=["",{text:"Ontime Box",color:"red",italic:false}]]
scoreboard players remove @s tse_lootbox 1

execute if score @s tse_lootbox matches 1.. run function tse:extensions/loot_box/award