##############
# Scoreboard #
##############

# Health Display
scoreboard objectives add tse_healthCheck health ["",{text:"Health",color:"dark_red"}]
scoreboard objectives setdisplay below_name tse_healthCheck

# Constants
scoreboard objectives add tse_constant dummy ["",{text:"c","color":"red"}]
scoreboard players set #const.6 tse_constant 6
scoreboard players set #const.5 tse_constant 5
scoreboard players set #const.4 tse_constant 4
scoreboard players set #const.3 tse_constant 3
scoreboard players set #const.2 tse_constant 2
scoreboard players set #const.1 tse_constant 1
scoreboard players set #const.10 tse_constant 10
scoreboard players set #const.20 tse_constant 20
scoreboard players set #const.24 tse_constant 24
scoreboard players set #const.40 tse_constant 40
scoreboard players set #const.60 tse_constant 60
scoreboard players set #const.120 tse_constant 120
scoreboard players set #const.288000 tse_constant 288000

# Trigger Commands
scoreboard objectives add tools trigger [{text:"TOOLS","color":"green"}]
scoreboard objectives add options trigger [{text:"OPTIONS","color":"green"}]
scoreboard objectives add ontime trigger [{text:"ONTIME",color:"green"}]

# Join Detection
scoreboard objectives add tse_joinDetect dummy ["",{text:"joinDetect",color:"gold"}]
execute unless score #server tse_joinDetect = #server tse_joinDetect run scoreboard players set #server tse_joinDetect 0

########
# Misc #
########

# Extension: Jump Boost checks
scoreboard objectives add tse_sneakTime minecraft.custom:minecraft.sneak_time ["",{text:"sneakTime",color:"gold"}]
scoreboard objectives add tse_sneakTimeDel dummy ["",{text:"sneakTimeDelay",color:"gold"}]
scoreboard objectives add tse_sneakTick dummy ["",{text:"sneakTick",color:"gold"}]
scoreboard objectives add tse_jump dummy
scoreboard objectives add tse_contextual_jump dummy ["",{text:"contextualJump",color:"gray"}]
# Extension: Offhand Enchant
scoreboard objectives add tse_ench dummy ["",{text:"ench",color:"gold"}]

# Force Loads
execute in minecraft:overworld positioned 0 -64 0 run forceload add 0 0
execute if loaded 0 0 0 run setblock 0 -64 0 minecraft:yellow_shulker_box
execute unless loaded 0 0 0 run tellraw @a ["",{text:"[TSERv5]",color:"green"},{text:" Protected chunk isn't loaded yet. "},{text:"(?)",hover_event:{action:"show_text",value:["",{text:"A yellow shulker box is placed at 0,0 - if this is your first time please wait a few seconds and reload."}]}}]

# Extension: Unusuals
scoreboard objectives add tse_OntimeMSec dummy
scoreboard objectives add tse_OntimeTicks dummy
scoreboard objectives add tse_unusual dummy ["",{text:"Unusual",color:"dark_purple"}]

schedule clear tse_unusuals:armorstand
schedule function tse_unusuals:armorstand 2s

# Extension: Loot Box
scoreboard objectives add tse_lootbox dummy ["",{text:"lootBox",color:"gold"}]

# Extension: XP
scoreboard objectives add tse_xp dummy ["",{text:"xp",color:"gold"}]

# Extension: Factions
team add Spoons ["",{text:"Spoon Alliance",color:"blue"}]
team modify Spoons prefix ["",{text:"Spoons ",color:"blue",bold:true}]
team modify Spoons color blue

team add Forks ["",{text:"Fork Federation",color:"red"}]
team modify Forks prefix ["",{text:"Forks ",color:"red",bold:true}]
team modify Forks color red

team add Knives ["",{text:"Brotherhood of Knives",color:"yellow"}]
team modify Knives prefix ["",{text:"Knives ",color:"yellow",bold:true}]
team modify Knives color yellow
 
team add Nomad ["",{text:"Nomad",color:"gray"}]
team modify Nomad prefix ["",{text:"Nomad ",color:"gray",bold:true}]
team modify Nomad color gray

scoreboard objectives add faction trigger ["",{text:"Faction",color:"green"}]

#################
# Load Complete #
#################
tellraw @a ["",{text:"[TSERv5]",color:"green"},{text:" Finished loading TSERv5."}]
