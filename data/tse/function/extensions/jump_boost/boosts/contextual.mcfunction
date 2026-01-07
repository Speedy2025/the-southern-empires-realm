###################
# Contextual Jump #
###################

# Contextual Jump is meant to allow players to gain a jump boost based on the height of blocks in front of them.
# The design philosophy is the following:
# 1. Contextual Jump should NEVER:
#       * Grant players jump boost more than the ceiling they are in (assume a 3 by X by 3 space with the player at the bottom)
#       * Exceed the height gained by high jump (see in same directory)
# 2. Contextual Jump should ALWAYS:
#       * Ignore the roof limitaiton if there is a roof close by (say, within 3-4 blocks up)
#       * Consider non-wall setups (for example, a single block floating in the air)
#       * Prioritize a wall versus decorations

# Consider the roof limitation:
#       What if the roof is a facade and there is a random hole to jump up?
#           * If there's a hole to jump up nearby and the roof is low, consider it equal to a wall.
#       What if the wall is incomplete?
#           * We are prioritizing closeness. If a wall is incomplete (for example, is a facade) then we attempt to scale it.
#           * IF it hits the roof, do not grant jump boost. 

###############
# Refuse Jump #
###############

# Contextual Jump knows that when you're venting, you don't want your cheeks to clap.
execute unless block ~ ~ ~ #tse:passthrough unless block ~ ~1 ~ #tse:passthrough unless block ~ ~1 ~ #minecraft:trapdoors[open=true] run return fail

title @s times 0t 1t 0t
title @s actionbar ["",{text:"Attempting Jump..."}]