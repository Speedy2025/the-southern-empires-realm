function tser_main:load/teams
function tser_main:load/scoreboard

setblock 0 -64 0 yellow_shulker_box[facing=east]
schedule clear tser_unusuals:armorstand
schedule function tser_unusuals:armorstand 1s replace


schedule clear tser_sched:shadowban
schedule function tser_sched:shadowban 1s replace


schedule clear tser_sched:skyblock_notify
schedule clear tser_sched:skyblock_reset
schedule function tser_sched:skyblock_reset 30s replace

#Required.
execute in the_end run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in overworld run forceload add 0 0
tellraw @a ["",{"text":"[TSERv4] ","color":"green"},{"text":"Finished Loading!"}]