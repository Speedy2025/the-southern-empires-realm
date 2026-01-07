data remove storage tse:temp val
data modify storage tse:temp val.text set from entity @s equipment.offhand.components."minecraft:written_book_content".pages[0].raw
function tse:extensions/offhand/rename/apply with storage tse:temp val