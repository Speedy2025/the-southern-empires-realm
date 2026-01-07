execute at @s positioned as @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b, Invulnerable:1b, Tags:['tse.init','tse.killInstantly'], NoGravity:1b}
##############
# Main values #
##############
# High-Power Book #1
loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/enchanted_books
data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:16},maxUses:5,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}
tellraw @a[tag=tse.debug.wt] ["[Debug Trader]",{text:" Before Trade Modification: ",color:red},{storage:"tse:temp",nbt:"val"}]
data modify storage tse:temp val.sell set from entity @e[tag=tse.init,limit=1] equipment.mainhand
tellraw @a[tag=tse.debug.wt] ["[Debug Trader]",{text:" After Trade Modification: ",color:red},{storage:"tse:temp",nbt:"val"}]
data modify entity @s Offers.Recipes prepend from storage tse:temp val

# High-Power Book #2
loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/enchanted_books
data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:16},maxUses:5,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}
data modify storage tse:temp val.sell set from entity @e[tag=tse.init,limit=1] equipment.mainhand
data modify entity @s Offers.Recipes prepend from storage tse:temp val

# Unusual Book
loot replace entity @e[tag=tse.init,limit=1] weapon.mainhand loot tse:loot_box/unusual_books
data modify storage tse:temp val set value {buy:{id:"minecraft:diamond",count:64},maxUses:2,rewardExp:true,sell:{id:"minecraft:dirt",count:1}}
data modify storage tse:temp val.sell set from entity @e[tag=tse.init,limit=1] equipment.mainhand
data modify entity @s Offers.Recipes prepend from storage tse:temp val

##############
# Bonus Item #
##############

execute store result score #temp tse_xp run random value 3..6
function tse:extensions/wandering_trader/bonus

tag @s add booked
kill @e[tag=tse.killInstantly]