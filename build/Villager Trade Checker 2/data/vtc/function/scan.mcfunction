scoreboard players set @s vtc_scan 2
scoreboard players operation #search tbs.ID = @s tbs.ID
tag @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] add vtc_scan
execute unless entity @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] run function vtc:scan/nested_execute_0
