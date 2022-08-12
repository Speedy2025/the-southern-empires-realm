#Placeth a blocketh over your headeth!

#I could do this in one of two ways:
# 1. Make the user take off their hat
# 2. I force the filthy cap off their head

# I choose option 2! Make them suffer

# I will store the hat, move the item from their mainhand, and then put their hat in their mainhand from storage.

data modify storage tse:temp_ench headitem set value {}

data modify storage tse:temp_ench headitem set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with air

data modify storage tse:temp_ench headitem.Slot set value 0b
data modify block 0 -64 0 Items[{Slot:0b}] set from storage tse:temp_ench headitem
execute if entity @s run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}