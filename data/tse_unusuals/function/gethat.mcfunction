advancement revoke @s only tse_unusuals:hatcheck
scoreboard players set @s tse_unusual 0
data modify storage tse:unusual vals.effect set value ""
execute store success score @s tse_unusual run data modify storage tse:unusual vals.effect set from entity @s[tag=Unusual] equipment.head.components."minecraft:custom_data"."tse:unusual"
execute if score @s tse_unusual matches 0 run return fail
scoreboard players set @s tse_unusual 0
#Normal


#Generation 1
execute if data storage tse:unusual vals{effect:"Fresh Shower"} run scoreboard players set @s tse_unusual 1
execute if data storage tse:unusual vals{effect:"Hot Head"} run scoreboard players set @s tse_unusual 2
execute if data storage tse:unusual vals{effect:"In Love"} run scoreboard players set @s tse_unusual 3
execute if data storage tse:unusual vals{effect:"Lucky"} run scoreboard players set @s tse_unusual 4
execute if data storage tse:unusual vals{effect:"Bubbling"} run scoreboard players set @s tse_unusual 5
execute if data storage tse:unusual vals{effect:"Snowed In"} run scoreboard players set @s tse_unusual 6
execute if data storage tse:unusual vals{effect:"Nerdy"} run scoreboard players set @s tse_unusual 7

#Generation 2
execute if data storage tse:unusual vals{effect:"Cursed Flames"} run scoreboard players set @s tse_unusual 8
execute if data storage tse:unusual vals{effect:"Bleeding"} run scoreboard players set @s tse_unusual 9
execute if data storage tse:unusual vals{effect:"Corrupted"} run scoreboard players set @s tse_unusual 10
execute if data storage tse:unusual vals{effect:"Bad Day"} run scoreboard players set @s tse_unusual 11
execute if data storage tse:unusual vals{effect:"Good Day"} run scoreboard players set @s tse_unusual 12
execute if data storage tse:unusual vals{effect:"The Unknown"} run scoreboard players set @s tse_unusual 13
execute if data storage tse:unusual vals{effect:"Conductive"} run scoreboard players set @s tse_unusual 14
execute if data storage tse:unusual vals{effect:"Colorful"} run scoreboard players set @s tse_unusual 15

#Generation 3
execute if data storage tse:unusual vals{effect:"Horns"} run scoreboard players set @s tse_unusual 16
execute if data storage tse:unusual vals{effect:"Magical Aura"} run scoreboard players set @s tse_unusual 17
execute if data storage tse:unusual vals{effect:"Oversight Aura"} run scoreboard players set @s tse_unusual 18
execute if data storage tse:unusual vals{effect:"Hot Soul"} run scoreboard players set @s tse_unusual 19

#Generation 4 // Project Firefly
execute if data storage tse:unusual vals{effect:"Memory: Cheerfulness"} run scoreboard players set @s tse_unusual 20
execute if data storage tse:unusual vals{effect:"Memory: Wrath"} run scoreboard players set @s tse_unusual 21
execute if data storage tse:unusual vals{effect:"Memory: Brilliance"} run scoreboard players set @s tse_unusual 22
execute if data storage tse:unusual vals{effect:"Memory: Despair"} run scoreboard players set @s tse_unusual 23
execute if data storage tse:unusual vals{effect:"Memory: Wisdom"} run scoreboard players set @s tse_unusual 24
execute if data storage tse:unusual vals{effect:"Memory: Determination"} run scoreboard players set @s tse_unusual 25

#Generation 5
execute if data storage tse:unusual vals{effect:"Flowers"} run scoreboard players set @s tse_unusual 26
execute if data storage tse:unusual vals{effect:"Spiders"} run scoreboard players set @s tse_unusual 27
execute if data storage tse:unusual vals{effect:"Sparkles"} run scoreboard players set @s tse_unusual 28
execute if data storage tse:unusual vals{effect:"Radio Signal"} run scoreboard players set @s tse_unusual 29

#Generation 6
execute if data storage tse:unusual vals{effect:"Lovely Start"} run scoreboard players set @s tse_unusual 30
execute if data storage tse:unusual vals{effect:"Falling Leaves"} run scoreboard players set @s tse_unusual 31
execute if data storage tse:unusual vals{effect:"Fall"} run scoreboard players set @s tse_unusual 32
execute if data storage tse:unusual vals{effect:"Firefly"} run scoreboard players set @s tse_unusual 33