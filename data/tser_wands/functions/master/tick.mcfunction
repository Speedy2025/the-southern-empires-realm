# Get Hand Item Model Data
execute as @a store result score @s tse_modelData run data get entity @s SelectedItem.tag.CustomModelData
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={c.inv.curr=1..2}] if score @s tse_modelData matches 1.. run function tser_wands:mana/root
execute as @a at @s if score @s tse_rmb matches 1.. if score @s tse_modelData matches 1.. run function tser_wands:effects/root
execute as @a if score @s tse_mana matches ..99 run scoreboard players add @s tse_mana 1
scoreboard players reset @a tse_rmb
