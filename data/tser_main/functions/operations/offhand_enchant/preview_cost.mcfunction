#So... this isn't the get cost function. This is a seperate tool.
scoreboard players set $levels.cost tse_enchantCheck 0
scoreboard players set $levels.actual tse_enchantCheck 0
scoreboard players set $temp.success tse_enchantCheck 0
scoreboard players set $temp.levels tse_enchantCheck 0
scoreboard players set $temp.enchleft tse_enchantCheck 0
data modify storage tse:temp_ench_add Enchantments set value []
data modify storage tse:temp_ench_add SelectedItem set value {}

data modify storage tse:temp_ench_add Enchantments set from entity @s SelectedItem.tag.Enchantments


# Now to check their levels.
# If they have enchantments already, calculate the total.
#---> Else they will be charged 5 levels (10, then halved).

execute if data entity @s SelectedItem.tag.Enchantments run function tser_main:operations/offhand_enchant/get_cost
execute if score $levels.cost tse_enchantCheck matches 0 run scoreboard players set $levels.cost tse_enchantCheck 10

scoreboard players operation $levels.cost tse_enchantCheck /= 3 tse_constant

execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You must put an item in your mainhand to view its cost. "}]
execute if data entity @s SelectedItem if score $levels.cost tse_enchantCheck matches 1 run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"It will take "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" level to enchant this item."}]
execute if data entity @s SelectedItem if score $levels.cost tse_enchantCheck matches 2.. run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"It will take "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" levels to enchant this item."}]