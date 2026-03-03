scoreboard players enable @s vtc_enable
scoreboard players enable @s vtc_scan
scoreboard players enable @s vtc_disable
scoreboard players enable @s vtc_reset
scoreboard players enable @s vtc_menu
execute if score @s vtc_enable matches 1 run function vtc:init_villager
execute if score @s vtc_disable matches 1 run function vtc:disable
execute if score @s vtc_scan matches 1 run function vtc:scan
execute if score @s vtc_scan matches 3 run function vtc:disable_scan
execute as @e[sort=nearest, type=villager, tag=vtc_selected, tag=vtc_scan, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1, distance=..5] at @s if score @s vtc_hasjob matches 0 if data entity @s {VillagerData: {profession: "minecraft:librarian"}} run function vtc:got_job
execute as @e[sort=nearest, type=villager, tag=vtc_selected, tag=vtc_scan, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1, distance=..5] at @s if score @s vtc_hasjob matches 1 if data entity @s {VillagerData: {profession: "minecraft:none"}} run scoreboard players set @s vtc_hasjob 0
execute if score @s vtc_reset matches 1 if entity @e[sort=nearest, type=villager, tag=vtc_selected, distance=..5, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] run function vtc:prompt_reset
execute if score @s vtc_reset matches 3 if entity @e[sort=nearest, type=villager, tag=vtc_selected, distance=..5, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] run function vtc:reset
execute if score @s vtc_reset matches 1 unless entity @e[sort=nearest, type=villager, tag=vtc_selected, distance=..5, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] run function vtc:stop_reset
execute if score @s vtc_is_resetting matches 1 if score @s vtc_reset matches 0 run function vtc:stop_reset
execute if score @s vtc_menu matches 1 run function vtc:player/nested_execute_0
execute if score @s vtc_menu matches 2 run function vtc:player/nested_execute_1
execute if score @s vtc_menu matches 3 run function vtc:player/nested_execute_2
