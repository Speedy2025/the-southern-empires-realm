# Clear Lingering Effects, if any

# General Jump Boosts
execute if score @s tse_jump matches 1 run function tse:extensions/jump_boost/boosts/burst
execute if score @s tse_jump matches 2 run function tse:extensions/jump_boost/boosts/delay
execute if score @s tse_jump matches 3 run function tse:extensions/jump_boost/boosts/high
execute if score @s tse_jump matches 4 run function tse:extensions/jump_boost/boosts/rocket
execute if score @s tse_jump matches 5 run function tse:extensions/jump_boost/boosts/grace
execute if score @s tse_jump matches 6 run function tse:extensions/jump_boost/boosts/mining