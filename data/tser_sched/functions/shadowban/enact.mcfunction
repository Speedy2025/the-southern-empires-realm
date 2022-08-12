# You've been naughty.
execute in tser_dim:night_mg run tp @s 250 9 250 180 0
tag @s add tse.shadowbanned
tag @s add se.disable.all
tag @s add ss.disable.all
data modify storage rx.playerdb:io player.data.tse.sbupdate set value 0b
gamemode spectator @s
tellraw @s ["",{"text":"You've been sent to the shadows as a result of your actions. Take this time to cool off and correct yourself. Continued misbehavior can and will result in a permanent ban.","color":"gray","italic":true}]
tellraw @s ["",{"text":"Want an early appeal? A video tutorial can be found ","color":"gray","italic":true},{"text":"[Here]","color":"dark_blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=zL19uMsnpSU"}}]
function #rx.playerdb:api/v2/save/self