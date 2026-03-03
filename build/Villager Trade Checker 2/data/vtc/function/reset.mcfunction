scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[sort=nearest, limit=1, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search] run function vtc:data_reset
tellraw @s [{text: "Villager has been reset", color: "green", bold: true}]
scoreboard players set @s vtc_reset 0
