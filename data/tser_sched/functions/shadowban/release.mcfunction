# You've been good
execute in tser_dim:night_mg run tp @s 250 9 250 180 0
tag @s remove tse.shadowbanned
tag @s remove se.disable.all
tag @s remove ss.disable.all
gamemode adventure @s
data modify storage rx.playerdb:io player.data.tse.sbupdate set value 0b
tellraw @s ["",{"text":"Thank you for behaving like a reasonable person, at least temporarily. You've been released from the shadows.","color":"gray","italic":true}]
function #rx.playerdb:api/v2/save/self
# data modify storage rx.playerdb:io player.data.tse.sbstatus set value 1b