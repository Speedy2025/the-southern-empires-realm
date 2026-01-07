# Throw Error Messages
execute unless function tse:extensions/offhand/merge/validate/can_merge run return fail


execute store result storage tse:offhand lvls.val int 1 run scoreboard players get #tse_ench_cost tse_ench
function tse:extensions/offhand/merge/apply