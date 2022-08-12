function #rx.playerdb:api/v2/get/self
tellraw @a[tag=tse.debug.slowtick] ["",{"text":"<Shadowban Tick: " },{"selector":"@s"},{"text":">"}]
# data modify storage rx.playerdb:io player.data.tse.sbstatus set value 1b
# data modify storage rx.playerdb:io player.data.tse.sbupdate set value 1b
execute if data storage rx.playerdb:io player.data.tse{sbupdate: 1b, sbstatus: 1b} run function tser_sched:shadowban/enact
execute if data storage rx.playerdb:io player.data.tse{sbupdate: 1b, sbstatus: 0b} run function tser_sched:shadowban/release