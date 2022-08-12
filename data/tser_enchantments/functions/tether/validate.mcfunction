execute store result score $tse.arrow.0 tse_UUID run data get entity @s Owner[0]
execute store result score $tse.arrow.1 tse_UUID run data get entity @s Owner[1]
execute store result score $tse.arrow.2 tse_UUID run data get entity @s Owner[2]
execute store result score $tse.arrow.3 tse_UUID run data get entity @s Owner[3]
tag @s add tse.tether.arrow
execute as @a if score @s rx.uuid0 = $tse.arrow.0 tse_UUID if score @s rx.uuid1 = $tse.arrow.1 tse_UUID if score @s rx.uuid2 = $tse.arrow.2 tse_UUID if score @s rx.uuid3 = $tse.arrow.3 tse_UUID if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"tser:tether",lvl:1}]}}}] run tag @e[tag=tse.tether.arrow] add tse.tether.valid
tag @s remove tse.tether.arrow
tag @s[tag=!tse.tether.valid] add tse.tether.invalid