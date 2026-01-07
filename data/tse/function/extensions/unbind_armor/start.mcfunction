item modify entity @s armor.head {"function":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":-1},"add":true}
item modify entity @s armor.chest {"function":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":-1},"add":true}
item modify entity @s armor.legs {"function":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":-1},"add":true}
item modify entity @s armor.feet {"function":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":-1},"add":true}

tellraw @s ["",{"text":"[TSE] ","color":"green"},{"text":"Cleared a layer of Curse of Binding"}]