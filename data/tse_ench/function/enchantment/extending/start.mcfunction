execute unless predicate tse_ench:has_extending run return 1

tellraw @s ["",{text:"[TSERv5] ",color:"green"},{text:"Extending is not allowed on that. Forcing removal..."}]
data modify storage tse:ench update.lvl set from entity @s SelectedItem.components.minecraft:enchantments."tse_ench:extending"
data modify storage tse:ench update.name set value "tse_ench:extending"
function tse:extensions/refund/technical/remove_enchantment with storage tse:ench update