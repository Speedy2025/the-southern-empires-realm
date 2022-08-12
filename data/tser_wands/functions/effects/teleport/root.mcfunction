

# If the person is crouching, greatly increase the teleport range and disable teleport correction
# Formula: Blocks * 40

scoreboard players set @s tse_raylength 0
execute if score @s tse_sneakTime matches 1.. if score @s tse_mana matches 100.. run scoreboard players set @s tse_raylength 4000
execute if score @s tse_sneakTime matches 1.. if score @s tse_mana matches 100.. run effect give @s slow_falling 1 0 true
execute if score @s tse_sneakTime matches 1.. if score @s tse_mana matches 100.. run scoreboard players remove @s tse_mana 100

execute unless score @s tse_sneakTime matches 1.. if score @s tse_mana matches 25.. run scoreboard players set @s tse_raylength 800
execute unless score @s tse_sneakTime matches 1.. if score @s tse_mana matches 25.. run scoreboard players remove @s tse_mana 25

execute unless score @s tse_raylength matches 0 run function tser_wands:effects/teleport/castspell