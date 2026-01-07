
$function tse:extensions/refund/technical/enchanted_book {name: "$(name)", lvl: $(lvl)}
# Remove the enchantment from the item
$item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{"$(name)":-$(lvl)},add:true}