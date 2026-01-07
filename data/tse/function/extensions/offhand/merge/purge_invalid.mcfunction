#########################
# Purge Invalid Entries #
#########################

# While it isn't as important for offhand enchant, I don't want to hear any complaints
# The primary purpose of this is to avoid silk touch + fortune together.
# Almost all others work well together.

# Silk Touch // Fortune Exclusivity
execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fortune" run \
    data remove storage tse:ench item.ench.minecraft:enchantments.minecraft:fortune
execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fortune" unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" run \
    data remove storage tse:ench item.ench.minecraft:enchantments.minecraft:silk_touch

# Loyalty // Riptide Exclusivity
execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:loyalty" unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:riptide" run \
    data remove storage tse:ench item.ench.minecraft:enchantments.minecraft:riptide
execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:riptide" unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:loyalty" run \
    data remove storage tse:ench item.ench.minecraft:enchantments.minecraft:loyalty

# Ok