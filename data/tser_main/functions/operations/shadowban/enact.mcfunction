# You've been a very naughty person.
tellraw @a ["",{"text":"Sending the player to the shadows...","color":"gray","italic":true}]
scoreboard players operation $in.uid rx.pdb.io = @s tse.shadowban
function #rx.playerdb:api/v2/get

# Now to mark down that you've been naughty.
data modify storage rx.playerdb:io player.data.tse.sbstatus set value 1b
data modify storage rx.playerdb:io player.data.tse.sbupdate set value 1b

function #rx.playerdb:api/v2/save