scoreboard players operation #search tbs.ID = @s tbs.ID
effect clear @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] glowing
scoreboard players set @s vtc_is_resetting 0
scoreboard players set @s vtc_reset 0
tellraw @p [{text: "No villager found in radius 10 blocks, or action was canceled.", color: "red"}]
team leave @e[sort=nearest, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1]
