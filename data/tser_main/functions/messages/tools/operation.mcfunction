# 2 - Offhand Enchant
# 3 - Kill Self
# 4 - Set Spawn point
# 5 - Glow for 10 seconds
# 6 - Anti-Bind
# 7 - TP to Mining Dimension
# 8 - Seed
# 9 - Offhand Rename
#10 - Creative Overworld
#11 - Survival Overworld
#12 - Creative Flatworld
#13 - Spawner ID
#14 - Hat
#15 - Offhand Enchant Info
#16 - TP to Nether Mining Dimension
#17 - I Offhand Lore

execute as @s[scores={tools=2}] run function tser_main:operations/offhand_enchant/start
kill @s[scores={tools=3}]
scoreboard players set @s[scores={tools=3}] tse_noHeadDrop 1
execute as @s[scores={tools=4}] at @s run spawnpoint @s
effect give @s[scores={tools=5}] glowing 10 0 true
execute as @s[scores={tools=6}] run function tser_main:operations/anti_bind/start

execute as @s[scores={tools=7}] in tser_dim:mining run tp @s 0 260 0
execute as @s[scores={tools=7}] at @s in tser_dim:mining run spreadplayers 0 0 100 1000 false @s

execute as @s[scores={tools=8}] run tellraw @s ["",{"text":"[Tools] ","color":"green"},{"text":"The seed of the server is "},{"text":"-8174300278679192280","color":"gold","hoverEvent":{"action":"show_text","value":"Click to put this into your chat bar"},"clickEvent":{"action":"suggest_command","value":"-8174300278679192280"}}]
execute as @s[scores={tools=9}] run function tser_main:operations/offhand_rename/root

execute as @s[scores={tools=10}] in c:1 run tp @s 0 260 0
execute as @s[scores={tools=10}] at @s in c:1 run spreadplayers 0 0 100 2000 false @s

execute as @s[scores={tools=11}] in minecraft:overworld run tp @s 0 260 0
execute as @s[scores={tools=11}] at @s in minecraft:overworld run spreadplayers -152 -247 1 15 false @s

execute as @s[scores={tools=12}] in c:10 run tp @s 0 260 0
execute as @s[scores={tools=12}] at @s in c:10 run spreadplayers 0 0 100 2000 false @s

execute as @s[scores={tools=13}] run function tser_main:operations/spawner_id/root

execute as @s[scores={tools=14}] run trigger hat

execute as @s[scores={tools=15}] run function tser_main:operations/offhand_enchant/preview_cost

execute as @s[scores={tools=16}] in tser_dim:n_mining run tp @s 0 260 0
execute as @s[scores={tools=16}] at @s in tser_dim:n_mining run spreadplayers 0 0 100 1000 under 127 false @s

execute as @s[scores={tools=17},tag=tse.significant] run function tser_main:operations/offhand_lore/set
execute as @s[scores={tools=18},tag=tse.significant] run function tser_main:operations/offhand_lore/add