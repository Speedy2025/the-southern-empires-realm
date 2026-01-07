data remove storage tse:temp search
$data modify storage tse:temp search.amount set value $(amount)
$data modify storage tse:temp search.UUID set from storage se:key vals[{uid: $(uid)}].UUID
function tse:extensions/refund/technical/adjust_balance with storage tse:temp search
data remove storage tse:temp search