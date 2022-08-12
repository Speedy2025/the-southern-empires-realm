
#If they're the first to queue for the match.
execute unless entity @a[tag=bh.ready] unless score #live bh.multi matches 1 run tellraw @a ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"selector":"@s"},{"text":" wants to play Block Hunt! To join, go to the lobby and type "},{"text":"/trigger bh.ready","color":"gold"},{"text":"."}]

#Add bh.ready if a match hasn't started
execute unless score #live bh.multi matches 1 run tag @s add bh.ready

#Update Queue
scoreboard players set #queue bh.multi 0
execute as @a[tag=bh.ready] run scoreboard players add #queue bh.multi 1


#If the match hasn't started w/ queue
execute if entity @a[tag=bh.ready] unless score #live bh.multi matches 1 run tellraw @a[tag=bh.ready] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"selector":"@s"},{"text":" is ready. "},{"text":"(","color":"gold"},{"score":{"name":"#queue","objective":"bh.multi"},"color":"gold"},{"text":"/3)","color":"gold"}]

#If the match started, no join -- otherwise join
execute if score #live bh.multi matches 1 run tellraw @s ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"There is a match currently running. Please wait until it ends to join the queue."}]

