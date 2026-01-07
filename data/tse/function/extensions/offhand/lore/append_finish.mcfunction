$item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:$(text),mode:"append"}
tellraw @s ["",{text:"[Offhand Lore]",color:"green"},{text:" Appended to the lore of your item."}]
return 1
$tellraw @s $(text)