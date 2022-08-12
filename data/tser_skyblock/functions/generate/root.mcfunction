# Postgen for Skyblock Island
#
## VALID SCORES
# 2 - Empty (Skip Decorations)
# 3 - Flowery Forest
# 4 - Frosted Forest
# 5 - Desert Paradise
# 6 - Mushroom Land

# Chest Location: ~10 ~23 ~21

# Now to check

setblock ~ ~ ~ air 

execute if entity @a[scores={skyblock=2},tag=tse.sb.gen] run function tser_skyblock:generate/empty/root
execute if entity @a[scores={skyblock=3},tag=tse.sb.gen] run function tser_skyblock:generate/flowery_forest/root
execute if entity @a[scores={skyblock=4},tag=tse.sb.gen] run function tser_skyblock:generate/thawing_forest/root
execute if entity @a[scores={skyblock=5},tag=tse.sb.gen] run function tser_skyblock:generate/desert_paradise/root
execute if entity @a[scores={skyblock=6},tag=tse.sb.gen] run function tser_skyblock:generate/mushroom_land/root
execute if entity @a[scores={skyblock=7..},tag=tse.sb.gen] run function tser_skyblock:generate/empty/root

scoreboard players set @a[tag=tse.sb.gen] skyblock 1
tag @a remove tse.sb.gen