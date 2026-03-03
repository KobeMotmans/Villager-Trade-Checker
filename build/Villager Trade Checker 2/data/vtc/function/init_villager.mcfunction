scoreboard players set @s vtc_enable 0
tag @e[type=villager, sort=nearest, limit=1] add vtc_selected
scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] run function vtc:remove_selected
scoreboard players operation @e[sort=nearest, limit=1, type=villager, tag=vtc_selected] tbs.ID = @s tbs.ID
scoreboard players add @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] vtc_hasjob 0
effect give @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] glowing infinite 1 true
