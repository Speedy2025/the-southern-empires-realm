#If not crouching, give self levitation for 10 seconds (tier 1 or 2?)
#If crouching, raycast until nearest block OR player and give all players (except you) levitation for 5 seconds (tier 2 or 3)
scoreboard players remove @s tse_mana 25
scoreboard players set @s tse_raylength 2000
tag @s add tse.wands.caster
execute if score @s tse_sneakTime matches 1.. run function tser_wands:effects/levitation/raycast
execute unless score @s tse_sneakTime matches 1.. run effect give @s levitation 1 14 true
execute unless score @s tse_sneakTime matches 1.. run effect give @s slow_falling 2 2 true
tag @a remove tse.wands.caster