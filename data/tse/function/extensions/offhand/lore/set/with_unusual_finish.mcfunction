
data modify storage tse:offhand unusual.lore set from entity @s SelectedItem.components."minecraft:lore"[0]
item modify entity @s weapon.mainhand tse:apply_lore
$item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:$(text),mode:"append"}
tellraw @s ["",{text:"[Offhand Lore]",color:"green"},{text:" Set the lore of your item."}]
return 1
$tellraw @s $(text)