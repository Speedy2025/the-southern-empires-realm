$item modify entity @s weapon.mainhand {function:"minecraft:set_name",entity:"this",name:$(text)}
return 1
$tellraw @s $(text)