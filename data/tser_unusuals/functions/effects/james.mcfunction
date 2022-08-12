# First ^ - Left
# Second ^ - Up
# Third ^ - Forward, don't bother
# - +2
# +2 -
# - -2
# -2 -
execute anchored eyes run particle dust 0 0 0 1 ^.2 ^.3 ^.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.1 ^.3 ^.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.0 ^.3 ^.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.2 ^.3 ^.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.1 ^.3 ^.2 0 0 0 0 1 force @a[tag=Unusual]

execute anchored eyes run particle dust 0 0 0 1 ^.2 ^.3 ^.1 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.2 ^.3 ^.0 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.2 ^.3 ^-.1 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.2 ^.3 ^-.2 0 0 0 0 1 force @a[tag=Unusual]

execute anchored eyes run particle dust 0 0 0 1 ^.1 ^.3 ^-.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^.0 ^.3 ^-.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.1 ^.3 ^-.2 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.2 ^.3 ^-.2 0 0 0 0 1 force @a[tag=Unusual]


execute anchored eyes run particle dust 0 0 0 1 ^-.2 ^.3 ^-.1 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.2 ^.3 ^-.0 0 0 0 0 1 force @a[tag=Unusual]
execute anchored eyes run particle dust 0 0 0 1 ^-.2 ^.3 ^.1 0 0 0 0 1 force @a[tag=Unusual]

execute as @s at @s unless block ~ ~-1 ~ #tser_main:air rotated ~ 0 positioned ~ ~1.3 ~ positioned ^ ^ ^-.15 run function tser_unusuals:effects/james_tree/cape
