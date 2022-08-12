execute as @a run function tser_sched:skyblock/reset
#Preventative measures
tellraw @a[tag=tse.debug.slowtick] ["",{"text":"<Skyblock Notify Tick>","color":"aqua"}]
schedule clear tser_sched:skyblock_notify
schedule clear tser_sched:skyblock_reset
schedule function tser_sched:skyblock_notify 270s replace