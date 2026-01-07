execute unless predicate tse:offhand_rename/is_valid run tellraw @s ["",{text:"[Offhand Lore]",color:"green"},{text:" You must place a "},{text:"signed book",color:"gold"},{text:" in your "},{text:"offhand",color:"gold"},{text:" and an item in your "},{text:"mainhand",color:"gold"},"."]
execute unless predicate tse:offhand_rename/is_valid run return 0

data remove storage tse:temp val
data modify storage tse:temp val.text set from entity @s equipment.offhand.components."minecraft:written_book_content".pages[0].raw
function tse:extensions/offhand/lore/append_finish with storage tse:temp val