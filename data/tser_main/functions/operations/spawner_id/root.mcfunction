#SelectedItem.tag.ucit.mineable_spawner.SpawnData.id -> Problematic spawner
#SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id -> Should work fine

execute if data entity @s SelectedItem.tag.ucit.mineable_spawner.SpawnData.id run function tser_main:operations/spawner_id/fix
execute unless data entity @s SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id unless data entity @s SelectedItem{id: "minecraft:spawner"} run tellraw @s ["",{"text":"[Tools] ","color":"green"},{"text":"You must hold a spawner to use this tool."}]
execute unless data entity @s SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id if data entity @s SelectedItem{id: "minecraft:spawner"} run tellraw @s ["",{"text":"[Tools] ","color":"green"},{"text":"The spawner is not currently set."}]
execute if data entity @s SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id run tellraw @s ["",{"text":"[Tools] ","color":"green"},{"text":"It should spawn "},{"nbt":"SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id","entity":"@s","color":"gold"},{"text":"."}]