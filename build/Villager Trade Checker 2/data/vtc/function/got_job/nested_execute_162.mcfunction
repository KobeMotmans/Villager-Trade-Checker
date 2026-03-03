execute store result score @s vtc_scan_price run data get entity @s Offers.Recipes[1].buy.count
execute if score @s vtc_scan_price <= @p vtc_swift_sneak run tellraw @p [{"text":"[PING] ","color":"gold"},{"text":"swift_sneak 3 < treshold","color":"green"},{"text":" — "},{"nbt":"Offers.Recipes[1].sell.components.minecraft:stored_enchantments","entity":"@s"},{"text":", price: "},{"nbt":"Offers.Recipes[1].buy.count","entity":"@s"}]
execute if score @s vtc_scan_price <= @p vtc_swift_sneak run scoreboard players set @s vtc_scan_flag 1
