advancement revoke @s only tser_main:recipes/totem_of_allay
recipe take @s tser_main:crafting_table/totem_of_allay
execute store result score @s tse_recipe run clear @s knowledge_book 0
execute if score @s tse_recipe matches 1.. run give @s totem_of_undying{allay:true,display:{Name:'{"text":"Totem of Allay","color":"aqua","italic":false}'},CustomModelData:1992556,Enchantments:[{id:"minecraft:looting",lvl:5}]}
execute if score @s tse_recipe matches 1.. store result score @s tse_recipe run clear @s knowledge_book 1
execute if score @s tse_recipe matches 2.. run function tser_main:operations/totem_of_allay/give