execute store result score @s vtc_scan_price run data get entity @s Offers.Recipes[0].buy.count
execute if score @s vtc_scan_price <= @p vtc_channeling run tellraw @p [{"text":"[PING] ","color":"gold"},{"text":"channeling 1 < treshold","color":"green"},{"text":" — "},{"nbt":"Offers.Recipes[0].sell.components.minecraft:stored_enchantments","entity":"@s"},{"text":", price: "},{"nbt":"Offers.Recipes[0].buy.count","entity":"@s"}]
execute if score @s vtc_scan_price <= @p vtc_channeling run scoreboard players set @s vtc_scan_flag 1
