# We have the OK to continue. Move the enchantments to storage to prep for the next step.
data modify storage tse:temp_ench_add Enchantments set from entity @s SelectedItem.tag.Enchantments


# Now to check their levels.
# If they have enchantments already, calculate the total.
#---> Else they will be charged 5 levels (10, then halved).

# Trick: Don't excessively check NBT: if they don't have a cost, just set it to 10 and half it later.
execute if data entity @s SelectedItem.tag.Enchantments run function tser_main:operations/offhand_enchant/get_cost
execute if score $levels.cost tse_enchantCheck matches 0 run scoreboard players set $levels.cost tse_enchantCheck 10

scoreboard players operation $levels.cost tse_enchantCheck /= 3 tse_constant

execute store result score $levels.actual tse_enchantCheck run data get entity @s XpLevel

# Levels are now set, now to check if they have enough levels
execute if score $levels.actual tse_enchantCheck >= $levels.cost tse_enchantCheck run function tser_main:operations/offhand_enchant/apply_enchants
execute unless score $levels.actual tse_enchantCheck >= $levels.cost tse_enchantCheck if score $levels.cost tse_enchantCheck matches 1 run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You require "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" level to enchant this item!"}]
execute unless score $levels.actual tse_enchantCheck >= $levels.cost tse_enchantCheck if score $levels.cost tse_enchantCheck matches 2.. run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You require "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" levels to enchant this item!"}]
