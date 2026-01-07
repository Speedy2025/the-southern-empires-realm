$execute store result score #balance ss.raycast run data get storage se:storage vals[{UUID: $(UUID)}].ss.Balance 1
$scoreboard players set #amount ss.raycast $(amount)
scoreboard players operation #balance ss.raycast += #amount ss.raycast
$execute store result storage se:storage vals[{UUID: $(UUID)}].ss.Balance int 1 run scoreboard players get #balance ss.raycast
