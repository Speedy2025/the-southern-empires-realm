#tellraw @a [{"text":"Before: "},{"score":{"name":"#se.homes.max","objective":"se.storage"}}]
scoreboard players operation #se.homes.max se.storage += @s tse_extraHomes
#tellraw @a [{"text":"After: "},{"score":{"name":"#se.homes.max","objective":"se.storage"}}]