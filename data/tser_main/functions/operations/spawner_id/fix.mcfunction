#SelectedItem.tag.ucit.mineable_spawner.SpawnData.id -> Problematic spawner
#SelectedItem.tag.ucit.mineable_spawner.SpawnData.entity.id -> Should work fine

#> Import Item
data modify block 0 -64 0 Items[{Slot:0b}] set from entity @s SelectedItem

#> Fix item
data modify block 0 -64 0 Items[{Slot:0b}].tag.ucit.mineable_spawner.SpawnData.entity.id set from block 0 -64 0 Items[{Slot:0b}].tag.ucit.mineable_spawner.SpawnData.id
data remove block 0 -64 0 Items[{Slot:0b}].tag.ucit.mineable_spawner.SpawnData.id

#> Export Item
loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}
tellraw @s ["",{"text":"[Tools] ","color":"green"},{"text":"Fixed your spawner!"}]