# 2 - Offhand Enchant
# 3 - Kill Self
# 4 - Set Spawn point
# 5 - Anti-Bind
# 6 - Offhand Enchant Cost
# 7 - Hat
# 8 - Offhand Merge
# 9 - Offhand Merge Cost

execute if entity @s[scores={tools=2}] run function tse:extensions/offhand/enchant/start
execute if entity @s[scores={tools=3}] run kill @s
execute if entity @s[scores={tools=4}] at @s run spawnpoint @s ~ ~ ~
execute if entity @s[scores={tools=5}] run function tse:extensions/unbind_armor/start
execute if entity @s[scores={tools=6}] run function tse:extensions/offhand/enchant/preview_cost
execute if entity @s[scores={tools=7}] run function tse:extensions/hat/start
execute if entity @s[scores={tools=8}] run function tse:extensions/offhand/merge/start
execute if entity @s[scores={tools=9}] run function tse:extensions/offhand/merge/preview_cost
execute if entity @s[scores={tools=10}] run function tse:extensions/xp_store/start
execute if entity @s[scores={tools=11}] run function tse:extensions/sculk_shriek/start
execute if entity @s[scores={tools=12}] run function tse:extensions/offhand/rename/set
execute if entity @s[scores={tools=13}] run function tse:extensions/offhand/lore/set
execute if entity @s[scores={tools=14}] run function tse:extensions/offhand/lore/append