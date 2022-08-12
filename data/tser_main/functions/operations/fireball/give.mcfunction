advancement revoke @s only tser_main:recipes/fireball
recipe take @s tser_main:crafting_table/fireball
execute store result score @s tse_recipe run clear @s knowledge_book 0
execute if score @s tse_recipe matches 1.. run give @s snowball{display:{Name:'{"text":"Throwable Fireball"}'},CustomModelData:1992566}
execute if score @s tse_recipe matches 1.. store result score @s tse_recipe run clear @s knowledge_book 1
execute if score @s tse_recipe matches 2.. run function tser_main:operations/fireball/give
advancement grant @s only tser_wands:fireball/2