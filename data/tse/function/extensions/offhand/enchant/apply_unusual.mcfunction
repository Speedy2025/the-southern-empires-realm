data modify storage tse:offhand unusual set from entity @s equipment.offhand.components."minecraft:custom_data"
item modify entity @s weapon.mainhand tse:apply_unusual

data modify storage tse:offhand unusual.lore set from entity @s equipment.offhand.components."minecraft:lore"[0]
item modify entity @s weapon.mainhand tse:apply_lore

item replace entity @s weapon.offhand with minecraft:book
tellraw @s ["",{text:"[Offhand Enchant]",color:"green"},{text:" Applied unusual effect."}]