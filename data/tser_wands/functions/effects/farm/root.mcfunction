# Wand will do the following:

# If there are any blocks WITH air above them that can be tilled, till 'em
# Replace tilled dirt with MOIST farmland
# Any fully grown are broken and replanted, dropping on the ground as if mined with Fortune V hoe
scoreboard players set @s tse_raylength 2000
scoreboard players remove @s tse_mana 50
execute anchored eyes positioned ^ ^ ^0.025 run function tser_wands:effects/farm/raycast