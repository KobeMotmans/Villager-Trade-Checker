scoreboard players operation #search tbs.ID = @s tbs.ID
team join vtc_remove @e[sort=nearest, type=villager, tag=vtc_selected, predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1]
tellraw @p [{text: "\u26a0", color: "yellow", bold: true}, {text: "Are you sure you want to reset this ", color: "red", bold: true}, {text: "red glowing villager?", color: "aqua", bold: true}, {text: "Trigger again for confirmation. ", color: "gold", italic: true}, {text: "Set the trigger to 0 for cancellation", color: "gray", italic: true}]
scoreboard players set @s vtc_reset 2
