scoreboard players set @s vtc_disable 0
scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] run function vtc:remove_selected
