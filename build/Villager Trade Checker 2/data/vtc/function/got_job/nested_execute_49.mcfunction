scoreboard players set @s vtc_scan_price 999
scoreboard players set @s vtc_scan_lvl 0
execute if data entity @s Offers.Recipes[0].sell.components.minecraft:stored_enchantments.minecraft:multishot store result score @s vtc_scan_lvl run data get entity @s Offers.Recipes[0].sell.components.minecraft:stored_enchantments.minecraft:multishot
execute if score @s vtc_scan_lvl matches 1 run function vtc:got_job/nested_execute_48
