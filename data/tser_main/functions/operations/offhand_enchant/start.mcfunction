# Reset intial values
scoreboard players set $levels.cost tse_enchantCheck 0
scoreboard players set $levels.actual tse_enchantCheck 0
scoreboard players set $temp.success tse_enchantCheck 0
scoreboard players set $temp.levels tse_enchantCheck 0
scoreboard players set $temp.enchleft tse_enchantCheck 0
data modify storage tse:temp_ench_add Enchantments set value []
data modify storage tse:temp_ench_add SelectedItem set value {}

# Check criteria:
#> 1) There IS an item in mainhand
#> 2) Item does NOT have custommodeldata
#>    * This can be checked with the mainhand
#> 3) There IS an enchanted book in offhand w/ StoredEnchantments

# Check 1 & 2
execute store success score $temp.success tse_enchantCheck unless score @s tse_modelData matches 1.. run data get entity @s SelectedItem
execute if score $temp.success tse_enchantCheck matches 0 run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You must have a valid item to enchant in your mainhand."}]

# 2 is added to the success score allow splitting up the errors.
#> You can't get the second error at all if you got the first.
scoreboard players add $temp.success tse_enchantCheck 2

# Check 3
execute if score $temp.success tse_enchantCheck matches 3 store success score $temp.success tse_enchantCheck run data get entity @s Inventory[{Slot: -106b}].tag.StoredEnchantments
execute if score $temp.success tse_enchantCheck matches 0 run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You must have a valid enchanted book in your offhand."}]

# At this point, only people who are OK to continue can proceed.
#> They will have a score of 1 in $temp.success
execute if score $temp.success tse_enchantCheck matches 1 run function tser_main:operations/offhand_enchant/valid