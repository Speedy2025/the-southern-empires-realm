execute as @a run function tser_sched:shadowban/get_update
#Preventative measures
tellraw @a[tag=tse.debug.slowtick] ["",{"text":"<Shadowban Tick>"}]
schedule clear tser_sched:shadowban
schedule function tser_sched:shadowban 1s replace