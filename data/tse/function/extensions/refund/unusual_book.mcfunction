execute in overworld run item replace block 0 -64 0 container.0 with minecraft:enchanted_book
$execute in overworld run item modify block 0 -64 0 container.0 [{function:"minecraft:set_lore",lore:[[{text:"",color:"white",italic:0b},{text:"Effect: ",color:"gold"},\
        {text:"$(name)"}],[""],\
                [{text:"",color:"white",italic:0b},{text:"A book with a mystical effect..."}],[{text:"",color:"white",italic:0b},{text:"Put it on a helmet using "},{text:"offhand enchant",color:"gold"}]],mode:"insert"},{function:"minecraft:set_name",name:[{text:"Unusual Book",color:"dark_purple",italic:0b}]},{function:"minecraft:set_custom_data",\
        tag:{"tse:unusual":"$(name)"}}]
execute in overworld run loot give @s mine 0 -64 0 stick[custom_data={drop_contents:1b}]