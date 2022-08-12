############
# BRANCHES #
############

# Fireball Wand - Done!
execute if score @s tse_modelData matches 1000001 if score @s tse_mana matches 20.. run function tser_wands:effects/fireball/root

# Teleport Wand - Done!
execute if score @s tse_modelData matches 2000002 if score @s tse_mana matches 25.. run function tser_wands:effects/teleport/root

# Slime Wand - Done!
execute if score @s tse_modelData matches 3000003 if score @s tse_mana matches 20.. run function tser_wands:effects/slime/root

# Farm Wand - Done!
execute if score @s tse_modelData matches 4000004 if score @s tse_mana matches 50.. run function tser_wands:effects/farm/root

# Levitation Wand - Done!
execute if score @s tse_modelData matches 5000005 if score @s tse_mana matches 25.. run function tser_wands:effects/levitation/root

# Sand Wand - Done!
execute if score @s tse_modelData matches 6000006 if score @s tse_mana matches 5.. run function tser_wands:effects/sand/root

# Genetics Wand - WIP!
execute if score @s tse_modelData matches 7000007 if score @s tse_mana matches 25.. run function tser_wands:effects/genetics/root
