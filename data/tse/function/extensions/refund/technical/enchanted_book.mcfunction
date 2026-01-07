execute in overworld run item replace block 0 -64 0 container.0 with minecraft:enchanted_book
$execute in overworld run item modify block 0 -64 0 container.0 [{function:"minecraft:set_lore",lore:[[{text:"",color:"white",italic:0b},{text:"An unusually powerful enchanted book..."}],[{text:""}],[{text:"",color:"white",italic:0b},{text:"Must be added to your item using "},{text:"offhand enchant",color:"gold"},{text:"."}]],mode:"insert"},{function:"minecraft:set_name",name:[{text:"High-Power Enchanted Book",color:"aqua",italic:1b}]},{function:"minecraft:set_enchantments",enchantments:{"$(name)":$(lvl)},add:0b}]
execute in overworld run loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1b}]


# 