give @s carrot_on_a_stick{Unbreakable:1b,CustomModelData:5000005,display:{Name:'{"text":"The Wand of Levitation","color":"gray","bold":true,"italic":false}'}}

tellraw @a ["",{"selector":"@s"},{"text":" has unlocked"},{"text":" The Wand of Levitation","color":"gold"}]
execute at @a run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 10 0.75 0
scoreboard players set @s tse_mana 100