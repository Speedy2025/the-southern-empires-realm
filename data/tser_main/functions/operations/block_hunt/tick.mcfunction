# Add those who belong
execute as @a[scores={bh.ready=1..},tag=!tse.shadowbanned] run function tser_main:operations/block_hunt/join

# Remove those who don't belong
execute as @a[scores={bh.ready=..-1},tag=bh.ready] run function tser_main:operations/block_hunt/leave
execute as @a[tag=bh.ready,scores={c.inv.curr=1..10}] if score #live bh.multi matches 0 run function tser_main:operations/block_hunt/leave
execute as @a[tag=bh.ready,scores={c.inv.curr=1..10}] if score #live bh.multi matches 1 run function tser_main:operations/block_hunt/broke

# Check the match's trigger
execute if entity @a[scores={bh.start=1..}] run scoreboard players set #live bh.multi 1
execute if entity @a[scores={bh.start=1..}] run team join tse.BlockHunt @a[tag=bh.ready]
scoreboard players reset @a bh.start

#Update the ability to start a match
scoreboard players set #queue bh.multi 0
execute as @a[tag=bh.ready] run scoreboard players add #queue bh.multi 1
execute if score #queue bh.multi matches 2.. unless score #live bh.multi matches 1 run scoreboard players enable @a[tag=bh.ready] bh.start

#Reset Ready
scoreboard players reset @a bh.ready
execute unless score #live bh.multi matches 1 run scoreboard players enable @a[scores={c.inv.curr=11}] bh.ready