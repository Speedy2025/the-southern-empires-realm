#Only OP Survival and Creative are auto-assigned. This is because I use
# inventory 10 for multiple things.
#
# I'll cover them seperately in their respective functions:
# Lobby in the lobby trigger
# Block Hunt in the match start
# Challenge (technically OP survival) in the challenge trigger.

execute if score @s c.inv.curr matches 1 run team join tse.OPSurvival
execute if score @s c.inv.curr matches 2 run team join tse.Creative


