team add tse.OPSurvival
team modify tse.OPSurvival color blue
team modify tse.OPSurvival prefix [{"text":"OP Survival ","color":"#5454FF","bold":true}]

team add tse.Creative
team modify tse.Creative color red
team modify tse.Creative prefix [{"text":"Creative ","color":"#E83A3A","bold":true}]


team add tse.Lobby
team modify tse.Lobby color yellow
team modify tse.Lobby prefix [{"text":"Lobby ","color":"#E8E83A","bold":true}]

team add tse.BlockHunt
team modify tse.BlockHunt color green
team modify tse.BlockHunt prefix [{"text":"BlockHunt ","color":"#41E841","bold":true}]
team modify tse.BlockHunt seeFriendlyInvisibles false
team modify tse.BlockHunt friendlyFire false
team modify tse.BlockHunt collisionRule never


tellraw @a[tag=debug] [{"text":"[TSEv4] ","color":"green"},{"text":"Loaded Teams"}]