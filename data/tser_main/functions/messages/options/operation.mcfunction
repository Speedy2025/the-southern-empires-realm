# 1 - Menu
# 2 - On Unusual
# 3 - Off Unusual
# 4 - None Jump
# 5 - Burst Jump
# 6 - Delay Jump
# 7 - High Jump
# 8 - Mute TPr
# 9 - Unmute TPr
# 10 - On LightCheck
# 11 - Off LightCheck

tag @s[scores={options=2}] add Unusual
tag @s[scores={options=3}] remove Unusual
execute if score @s options matches 4..8 run scoreboard players operation @s tse_jump = @s options
execute if score @s options matches 4..8 run scoreboard players remove @s tse_jump 4
tag @s[scores={options=9}] add se.mute.tpr
tag @s[scores={options=10}] remove se.mute.tpr
tag @s[scores={options=11}] add LightCheck
tag @s[scores={options=12}] remove LightCheck
tag @s[scores={options=13}] add tse_dramaticQuiet
tag @s[scores={options=14}] remove tse_dramaticQuiet