# We don't need to do much for this.
item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:unbreakable":{}}}

# Clear the item later.

# Acknowledge Completion
item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{unbreaking:0}}
item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{mending:0}}
scoreboard players remove #tse_ench_encoded tse_ench 2
