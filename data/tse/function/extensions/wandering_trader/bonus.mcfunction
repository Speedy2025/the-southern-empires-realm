###############
# Bonus Items #
###############

# Unusual Book
execute store result score #temp2 tse_xp run random value 0..40
execute if score #temp2 tse_xp matches 0..6 run loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/bonus_item
execute if score #temp2 tse_xp matches 0..6 run data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:32},maxUses:3,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}
execute if score #temp2 tse_xp matches 6..39 run loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/enchanted_books
execute if score #temp2 tse_xp matches 6..39 run data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:16},maxUses:5,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}
execute if score #temp2 tse_xp matches 40 run loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/unusual_books
execute if score #temp2 tse_xp matches 40 run data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:64},maxUses:2,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}

data modify storage tse:temp val.sell set from entity @e[tag=tse.init,limit=1] equipment.mainhand
data modify entity @s Offers.Recipes prepend from storage tse:temp val

scoreboard players remove #temp tse_xp 1
execute if score #temp tse_xp matches 1.. run function tse:extensions/wandering_trader/bonus