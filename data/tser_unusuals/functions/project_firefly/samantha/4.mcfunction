execute unless score @s c.inv.curr matches 1 run advancement revoke @s only tser_unusuals:project_firefly/samantha/4 1
execute if score @s c.inv.curr matches 1 at @a run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0
execute if score @s c.inv.curr matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" has completed"},{"text":" Samantha's Cheerfulness","color":"gold"},{"text":"!"}]
execute if score @s c.inv.curr matches 1 run give @s leather_helmet{Unusual:samantha,display:{color:16711922,Name:'{"text":"Unusual Leather Helmet","color":"dark_purple","italic":false}',Lore:['{"text":"Unusual Effect: Samantha\'s Cheerfulness","color":"dark_purple","italic":false}','{"text":" "}','{"text":"Protection V","color":"gray","italic":false}','{"text":"Watermade V","color":"gray","italic":false}']},Enchantments:[{id:"protection",lvl:5},{id:"respiration",lvl:10},{id:"aqua_affinity",lvl:5}],Unbreakable:1,HideFlags:1,RepairCost:1000000}