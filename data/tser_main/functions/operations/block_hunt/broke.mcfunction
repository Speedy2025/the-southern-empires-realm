tellraw @s ["",{"text":"You... broke the server. Congratulations!"}]
tag @s remove bh.ready
tag @s remove bh.hider
tag @s remove bh.seeker
tag @s remove bh.spectator
tag @s remove bh.wanderer
tag @s remove bh.disguised


scoreboard players operation #target bh.id = @s bh.id
kill @e[predicate=bh:id_match,type=!player]
