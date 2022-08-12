tag @s remove bh.ready

#Update Queue
scoreboard players set #queue bh.multi 0
execute as @a[tag=bh.ready] run scoreboard players add #queue bh.multi 1

tellraw @a[tag=bh.ready] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"selector":"@s","color":"gold","bold":true},{"text":" left the qeuue." },{"text":"(","color":"gold"},{"score":{"name":"#queue","objective":"bh.multi"},"color":"gold"},{"text":"/3)","color":"gold"}]
tellraw @s ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"You have left the Block Hunt queue."}]
