data modify storage tse:hat head set from entity @s equipment.head
data modify storage tse:hat head.Slot set value 0b
item replace entity @s armor.head from entity @s weapon.mainhand
data modify block 0 -64 0 Items[] set from storage tse:hat head
item replace entity @s weapon.mainhand from block 0 -64 0 container.0
data remove storage tse:hat head
execute at @s run playsound block.decorated_pot.insert player @a[distance=0..10] ~ ~ ~ 5 1 1