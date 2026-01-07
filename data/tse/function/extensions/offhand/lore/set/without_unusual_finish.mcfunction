$item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:$(text),mode:"replace_all"}
tellraw @s ["",{text:"[Offhand Lore]",color:"green"},{text:" Set the lore of your item."}]
return 1
$tellraw @s $(text)