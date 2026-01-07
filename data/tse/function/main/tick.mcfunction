
##########################
# Update Player Trackers #
##########################

#title @a actionbar ""
#Detect Player Join
execute as @a unless score @s tse_joinDetect = #server tse_joinDetect run function tse:messages/motd
scoreboard players add #server tse_joinDetect 1
scoreboard players operation @a tse_joinDetect = #server tse_joinDetect

#Initialize Players
execute as @a unless score @s tse_jump = @s tse_jump run function tse:main/initialize

# Sneak Detection (for extension JUMP BOOST)
execute as @a run function tse:extensions/jump_boost/sneak_detection

# Update all
scoreboard players add @e[type=armor_stand] se.ontime 1

# Give Loot Boxes
execute as @a[scores={se.ontime=200..}] run function tse:extensions/loot_box/consider



#########
# Menus #
#########

# Tools Menu
execute as @a if score @s tools matches 1 run function tse:tools/menu
execute as @a if score @s tools matches 2.. run function tse:tools/operations

# Operations Menu
execute as @a if score @s options matches 1 run function tse:options/menu
execute as @a if score @s options matches 2.. run function tse:options/operations

execute as @a if score @s ontime matches 1.. run function tse:extensions/ontime/display_time

# Reset and Re-Enable Menus
scoreboard players reset @a tools
scoreboard players reset @a options
scoreboard players reset @a ontime
scoreboard players enable @a tools
scoreboard players enable @a options
scoreboard players enable @a ontime

##############
# Extensions #
##############

execute as @e[type=minecraft:wandering_trader,tag=!booked,limit=1] run function tse:extensions/wandering_trader/start

execute as @a[scores={tse_sneakTime=1..}] run function tse:extensions/jump_boost/start

execute as @a if predicate tse:custom_items/totem_of_allay run function tse:extensions/totem_of_allay/start

execute as @e[scores={tse_unusual=1..}] run function tse_unusuals:effecttick

execute as @a[scores={tse_lootbox=1..}] run function tse:extensions/loot_box/status/validate_award

execute as @a[scores={faction=1..}] run function tse:extensions/faction/root
scoreboard players reset @a faction
scoreboard players enable @a[tag=!tse.faction] faction