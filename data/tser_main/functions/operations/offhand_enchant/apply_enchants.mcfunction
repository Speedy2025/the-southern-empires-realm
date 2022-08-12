# All players who've made it this far have everything valid.
# There is nothing wrong with players from here on out.

# Display success message first to save workarounds
execute if score $levels.cost tse_enchantCheck matches 1 run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You spent "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" level to enchant this item!"}]
execute if score $levels.cost tse_enchantCheck matches 2.. run tellraw @s ["",{"text":"[Offhand Enchant] ","color":"green"},{"text":"You spent "},{"score":{"name":"$levels.cost","objective":"tse_enchantCheck"},"color":"gold"},{"text":" levels to enchant this item!"}]

# Pay Levels
#> For the records, I have seen players with 200+ level costs that DID have the required levels.
execute if score $levels.cost tse_enchantCheck matches 100.. run function tser_main:operations/offhand_enchant/lvls/100
execute if score $levels.cost tse_enchantCheck matches 50.. run function tser_main:operations/offhand_enchant/lvls/50
execute if score $levels.cost tse_enchantCheck matches 10.. run function tser_main:operations/offhand_enchant/lvls/10
execute if score $levels.cost tse_enchantCheck matches 5.. run function tser_main:operations/offhand_enchant/lvls/5
execute if score $levels.cost tse_enchantCheck matches 1.. run function tser_main:operations/offhand_enchant/lvls/1

# They paid levels, time to assemble the new item.

#Reset storage and prepare New Item in storage
data modify storage tse:temp_ench_add SelectedItem set from entity @s SelectedItem
data modify storage tse:temp_ench_add SelectedItem.tag.Enchantments prepend from entity @s Inventory[{Slot: -106b}].tag.StoredEnchantments[]
#execute if score $has_enchant tse_enchantCheck matches 0 run data modify storage tse:temp_ench_add SelectedItem.tag.Enchantments[] set from entity @s Inventory[{Slot: -106b}].tag.StoredEnchantments[]

#Modify the Enchanted Book
item replace entity @s weapon.offhand with book{display:{Name:'{"text":"Used Enchanting Book","italic":false}',Lore:['{"text":"Hope it was nice...","color":"white","italic":false}']}}

#Create New Item from storage
# 1. Move Item to Existance in Yellow Shulker Box
# 2. Replace Item based on player's mainhand
data modify block 0 -64 0 Items[{Slot:0b}] set from storage tse:temp_ench_add SelectedItem
execute if entity @s run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}

