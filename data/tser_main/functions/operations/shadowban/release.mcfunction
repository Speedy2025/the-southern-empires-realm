# You were a naughty person, but you're not anymore.
tellraw @a ["",{"text":"Bringing the player out of the shadows...","color":"gray","italic":true}]
scoreboard players operation @s tse.shadowban *= n1 tse_constant
scoreboard players operation $in.uid rx.pdb.io = @s tse.shadowban
function #rx.playerdb:api/v2/get

# You've been forgiven and it needs to be known.
data modify storage rx.playerdb:io player.data.tse.sbstatus set value 0b
data modify storage rx.playerdb:io player.data.tse.sbupdate set value 1b

function #rx.playerdb:api/v2/save