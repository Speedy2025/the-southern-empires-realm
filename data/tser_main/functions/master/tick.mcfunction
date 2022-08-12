##################
# Early Triggers #
##################

#    _0_/ 
#   / /  Razzle Dazzled
#    /\  

#Throwable Fireballs
#There is a delay to it.
execute as @a unless score @s tse_fbdelay matches 1.. run scoreboard players set @s tse_fbdelay 20
execute as @a[scores={tse_fireball=1,tse_modelData=1..}] at @s run function tser_main:operations/fireball/check
scoreboard players reset @a tse_fireball

#Model Data Tracker
# Placed early to support Offhand Enchant & after ur mom
execute as @a store result score @s tse_modelData run data get entity @s SelectedItem.tag.CustomModelData

#####################
# Tools and Options #
#####################
#Handles Tools Menu and Operations
execute as @a if score @s tools matches 1 run function tser_main:messages/tools/menu
execute as @a if score @s tools matches 2.. run function tser_main:messages/tools/operation

#Handles Options Menu and Operations
execute as @a if score @s options matches 1 run function tser_main:messages/options/menu
execute as @a if score @s options matches 2.. run function tser_main:messages/options/operation

#Resets Tools and Options Menu
scoreboard players reset @a tools
scoreboard players reset @a options
scoreboard players enable @a[scores={c.inv.curr=1..2},tag=!tse.shadowbanned] tools
scoreboard players enable @a[scores={c.inv.curr=1..2},tag=!tse.shadowbanned] options

###################
# Update Trackers #
###################

#Full Ontime
execute as @e[type=#tser_main:ontime] run function se:utility/get/full_ontime

#Sneak Tracker
execute as @a run function se:utility/get/sneak

#All Entities have a dimension
execute as @e[type=!player,tag=!tse.dimreg] run function pdi:misc/register
execute as @e[type=!player,tag=!tse.dimreg] run tag @s add tse.dimreg


#####################
# Handle Extensions #
#####################

#Hats
execute as @a[tag=!tse.shadowbanned] if score @s hat matches 1.. if score @s c.inv.curr matches 1..2 run function tser_main:operations/hat/root
scoreboard players reset @a hat
scoreboard players enable @a hat

#Unusuals
execute if entity @a[tag=Unusual] run function tser_unusuals:effecttick

#Wands
function tser_wands:master/tick

#Jump Boost
execute as @a[scores={tse_sneakTime=1..,c.inv.curr=1..2}] run function tser_main:operations/jumpboost/redirect

#Lighting Tracker
execute if score #light tse_single matches 0 if entity @a[tag=LightCheck] run schedule function tser_sched:light_check 1s replace
execute if score #light tse_single matches 0 if entity @a[tag=LightCheck] run scoreboard players set #light tse_single 1

#L00t Boxes
execute as @a run function tser_main:loot_boxes/tick

#Custom Enchantments
function tser_enchantments:tick

#MOTD
execute as @a[tag=tser.motd] run function tser_main:messages/motd
tag @a[scores={tse_quitTracker=1..}] add tser.motd

#Hotfix 222021
setblock 0 -64 0 yellow_shulker_box[facing=east]{}

#Player Death Loot
#Everyone hates it when I use as @a[] at @s, but it is REQUIRED!!
execute as @a[scores={tse_deathTracker=1..}] at @s run function tser_main:operations/misc/drop_head

#Lobby
execute as @a[scores={lobby=1..}] in tser_dim:night_mg run tp @s 250 9 250 180 0
scoreboard players reset @a lobby
scoreboard players enable @a[tag=!bh.ready] lobby

#Update Ascension Cooldown
execute as @a[scores={tse_ascCooldown=1..}] run scoreboard players remove @s tse_ascCooldown 1
execute as @a[scores={adv.ascend=1..},tag=!tse.shadowbanned] run function tser_main:ascensions/root
scoreboard players reset @a adv.ascend
scoreboard players enable @a[advancements={tser_main:legendary_series/the_warrior/out_of_control=true},scores={c.inv.curr=1..10},tag=!tse.shadowbanned] adv.ascend

# Shadow Banning Handling
execute as @a[tag=tse.shadowbanned] run function tser_main:operations/shadowban/forcetags
execute as @a[name="Speedy2025",scores={tse.shadowban=1..}] run function tser_main:operations/shadowban/enact
execute as @a[name="Speedy2025",scores={tse.shadowban=..-1}] run function tser_main:operations/shadowban/release
execute as @a[name="The7Saiyans",scores={tse.shadowban=1..}] run function tser_main:operations/shadowban/enact
execute as @a[name="The7Saiyans",scores={tse.shadowban=..-1}] run function tser_main:operations/shadowban/release
scoreboard players reset @a tse.shadowban
scoreboard players enable Speedy2025 tse.shadowban
scoreboard players enable The7Saiyans tse.shadowban

#Block Hunt
function tser_main:operations/block_hunt/tick

#Allay Summoning
execute as @e[type=item,tag=!tse.notAllay] at @s if entity @s[nbt={Item:{tag:{allay: 1b}}}] run function tser_main:operations/totem_of_allay/summon
tag @e[type=item] add tse.notAllay