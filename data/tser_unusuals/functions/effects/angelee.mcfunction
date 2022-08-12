# First ^ - Left
# Second ^ - Up
# Third ^ - Forward, don't bother

#########
# RIGHT #
#########
#Line 1
particle dust 0.75 0.75 1 1 ^-.60 ^.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 2
particle dust 0.75 0.75 1 1 ^-.15 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.45 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.60 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.75 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 3
particle dust 0.75 0.75 1 1 ^-.30 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.45 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.60 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.75 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 4
particle dust 0.75 0.75 1 1 ^-.30 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.60 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^-.90 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 5
particle dust 0.75 0.75 1 1 ^-.90 ^-.45 ^ 0 0 0 0 1 force @a[tag=Unusual]

#########
# LEFT #
#########
#Line 1
particle dust 0.75 0.75 1 1 ^.60 ^.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 2
particle dust 0.75 0.75 1 1 ^.15 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.45 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.60 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.75 ^ ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 3
particle dust 0.75 0.75 1 1 ^.30 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.45 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.60 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.75 ^-.15 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 4
particle dust 0.75 0.75 1 1 ^.30 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.60 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
particle dust 0.75 0.75 1 1 ^.90 ^-.30 ^ 0 0 0 0 1 force @a[tag=Unusual]
#Line 5
particle dust 0.75 0.75 1 1 ^.90 ^-.45 ^ 0 0 0 0 1 force @a[tag=Unusual]

execute at @s rotated as @s anchored feet run particle minecraft:white_ash ~.6 ~1.7 ~.6 0.1 0.1 0.1 .01 5 force @a[tag=Unusual]