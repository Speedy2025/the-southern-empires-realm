execute unless entity @s[advancements={tser_main:legendary_series/root=true},scores={c.inv.curr=1}] run advancement revoke @s only tser_main:legendary_series/trial_by_fire

execute if entity @s[advancements={tser_main:legendary_series/root=true},scores={c.inv.curr=1}] run clear @s ancient_debris 64
execute if entity @s[advancements={tser_main:legendary_series/root=true},scores={c.inv.curr=1}] run tellraw @a ["",{"selector":"@s"},{"text":" has passed the"},{"text":" Trial by Fire","color":"gold"}]
execute if entity @s[advancements={tser_main:legendary_series/root=true},scores={c.inv.curr=1}] run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0