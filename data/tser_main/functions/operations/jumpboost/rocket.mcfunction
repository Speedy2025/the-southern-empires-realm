execute at @s[scores={tse_sneakTime=1}] run playsound block.note_block.pling voice @s ~ ~ ~ 10 0
effect give @s[scores={tse_sneakTime=1..20}] slowness 1 1 true
execute at @s[scores={tse_sneakTime=21}] run playsound block.note_block.pling voice @s ~ ~ ~ 10 0
effect give @s[scores={tse_sneakTime=21..40}] slowness 1 4 true
execute at @s[scores={tse_sneakTime=41}] run playsound block.note_block.pling voice @s ~ ~ ~ 10 0
effect give @s[scores={tse_sneakTime=41..60}] slowness 1 9 true
execute at @s[scores={tse_sneakTime=61}] run playsound block.note_block.pling voice @s ~ ~ ~ 10 1
effect give @s[scores={tse_sneakTime=61..}] jump_boost 1 49 true