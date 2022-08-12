tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" \u0020 \u0020 \u0020 \u0020","strikethrough":true,"color":"gold"},{"text":"[ ","bold":true,"color":"dark_gray"},{"text":"The Southern Empires ","bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"dark_gray"},{"text":" \u0020 \u0020 \u0020 \u0020","strikethrough":true,"color":"gold"},{"text":"|","color":"dark_gray","bold":true}]
tellraw @s ["",{"text":"Welcome back, ","color":"dark_aqua"},{"selector":"@s"}]
tellraw @s [""]
tellraw @s ["",{"text":"Your current ontime:","color":"dark_aqua"}]
function tser_main:messages/ontime
tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ","strikethrough":true,"color":"gold"},{"text":"|","color":"dark_gray","bold":true}]

scoreboard players reset @s tse_quitTracker
tag @s remove tser.motd
execute as @s[tag=tser.dramatic] run function tser_main:operations/misc/dramatic_entrance