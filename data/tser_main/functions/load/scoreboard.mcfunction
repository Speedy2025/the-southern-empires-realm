##################
# Shift Tracking #
##################
scoreboard objectives add tse_sneakTime minecraft.custom:minecraft.sneak_time [{"text":"shiftTime","color":"gold"}]
scoreboard objectives add tse_sneakTimeDel dummy [{"text":"shiftTimeDelay","color":"gold"}]
scoreboard objectives add tse_sneakTick dummy [{"text":"sneakTick","color":"gold","bold":true}]

##########
# Health #
##########
scoreboard objectives add tse_healthCheck health [{"text":"Health","color":"dark_red"}]
scoreboard objectives setdisplay belowName tse_healthCheck

###################
# Unusuals & Hats #
###################

scoreboard objectives add tse_unusual dummy [{"text":"u","color":"dark_purple"}]
scoreboard objectives add tse_OntimeMSec dummy [{"text":"mSec","color":"dark_purple"}]

#############
# Constants #
#############
scoreboard objectives add tse_constant dummy [{"text":"c","color":"red"}]
scoreboard players set n1 tse_constant -1
scoreboard players set 0 tse_constant 0
scoreboard players set 1 tse_constant 1
scoreboard players set 2 tse_constant 2
scoreboard players set 3 tse_constant 3
scoreboard players set 4 tse_constant 4
scoreboard players set 6 tse_constant 6
scoreboard players set 20 tse_constant 20

####################
# Trigger Commands # !! NOT COMPATIBLE !!
####################
scoreboard objectives add tools trigger [{"text":"TOOLS","color":"green"}]
scoreboard players enable @a tools
scoreboard objectives add options trigger [{"text":"OPTIONS","color":"green"}]
scoreboard players enable @a options
scoreboard objectives add hat trigger [{"text":"HAT!","color":"green"}]
scoreboard players enable @a hat
scoreboard objectives add tmpVault trigger [{"text":"VAULT","color":"green"}]
scoreboard players enable @a tmpVault
scoreboard objectives add lobby trigger [{"text":"LOBBY","color":"green"}]
scoreboard players enable @a lobby
scoreboard objectives add adv.ascend trigger [{"text":"ASCEND","color":"green"}]
scoreboard objectives add bh.ready trigger [{"text":"READY","color":"green"}]
scoreboard objectives add bh.start trigger [{"text":"START!","color":"green"}]
scoreboard objectives add skyblock trigger [{"text":"Skyblock","color":"green"}]
scoreboard objectives add tse.shadowban trigger [{"text":"Admin: Shadowban!","color":"green","italic":true}]

####################
# Wand Scoreboards #
####################
scoreboard objectives add tse_rmb minecraft.used:minecraft.carrot_on_a_stick [{"text":"rc","color":"dark_green"}]
scoreboard objectives add tse_modelData dummy [{"text":"mD","color":"dark_green"}]
scoreboard objectives add tse_raylength dummy [{"text":"rl","color":"dark_green"}]
scoreboard players set $dummy.max tse_raylength 0
scoreboard objectives add tse_mana dummy [{"text":"Mana","color":"dark_green"}]

#######################
# Throwable Fireballs #
#######################
scoreboard objectives add tse_fireball minecraft.used:minecraft.snowball [{"text":"tfB","color":"dark_green"}]
scoreboard objectives add tse_fbdelay dummy [{"text":"fBdel","color":"dark_green"}]

#######################
# Universal Variables #
#######################
scoreboard objectives add tse_single dummy [{"text":"sA"}]
scoreboard players set #light tse_single 0

#######################
# Enderman Stare Adv. #
#######################
scoreboard objectives add tse_endStareCurr dummy [{"text":"eSC","color":"dark_green"}]
scoreboard objectives add tse_endStarePrev dummy [{"text":"eSP","color":"dark_green"}]
scoreboard objectives add tse_endStareTemp dummy [{"text":"eST","color":"dark_green"}]
scoreboard objectives add tse_endStareGoal dummy [{"text":"eSG","color":"dark_green"}]

###########################
# Elytra Disable Mechanic #
###########################
scoreboard objectives add tse_noElytra minecraft.custom:minecraft.aviate_one_cm

######################
# Ascension Cooldown #
######################
scoreboard objectives add tse_ascCooldown dummy [{"text":"aCD","color":"dark_green"}]

##############
# Misc Tools #
##############
scoreboard objectives add tse_noHeadDrop dummy [{"text":"nhd"}]
scoreboard objectives add tse_recipe dummy [{"text":"rp"}]
scoreboard objectives add tse_extraHomes dummy [{"text":"eh"}]
scoreboard objectives add tse_lootbox dummy [{"text":"lb"}]
scoreboard objectives add tse_jump dummy [{"text":"ju"}]
scoreboard objectives add tse_enchantCheck dummy [{"text":"eC","color":"blue"}]
scoreboard objectives add tse_quitTracker minecraft.custom:minecraft.leave_game [{"text":"Quit","color":"blue"}]
scoreboard objectives add tse_UUID dummy [{"text":"UUID","color":"blue"}]
scoreboard objectives add tse_deathTracker deathCount [{"text":"Death","color":"blue"}]
tellraw @a[tag=debug] [{"text":"[TSEv4] ","color":"green"},{"text":"Loaded Scoreboard"}]

