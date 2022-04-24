#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► USER MANUAL : §6https://pharohsdragon.wixsite.com/unity/tools-user-manual"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§c==== Staff Utility Commands ===="}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Vanish   §2- /function tools/vanish"1
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Staff GUI   §2- /function tools/gui"}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► AutoTotem  §2- /function tools/autototem"},{"text":" §¶§b► tools Credits §2- /function tools/credit"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Credits   §2- /function tools/credit"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► FakeLeave  §2- /function tools/fakeleave"}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Godmode   §2- /function tools/tgm"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Clear Lag §2- /function tools/lagclear"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Clear Chat §2- /function tools/clearchat"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Clear Area§2- /function tools/cleararea"}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Give Kit §2- /function KIT/"}]}



tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§c==== Player Utility Commands ===="}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Smite §2- /execute (player) ~~~ function tools/smite"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Echest Wipe §2- /execute (player) ~~~ function tools/echestwipe"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Mayfly §2- /execute (player) ~~~ function tools/mayfly"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Freeze     §2- /execute (player) ~~~ function tools/freeze_player"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Stats     §2- /execute (player) ~~~ function tools/stats"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Warn:     §2- /execute (player) ~~~ function tools/warn"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Warn Reset§2- /execute (player) ~~~ function tools/warnreset"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Punish    §2- /execute (player) ~~~ function tools/punish"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Ban       §2- /tag (player) add Ban"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Unban SoftBan  §2- /execute (player) ~~~ function tools/unban"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Unban HardBan  §2- /function tools/unban_window"}]}

tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§c==== Status Commands ===="}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Modules   §2- /function tools/modulecheck"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Itembans  §2- /function tools/itembancheck"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Ore Alerts§2- /function tools/ore_alert_check"}]}

#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§c==== Custom Toggles ===="}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Toggle Modules    §2- /function toggle"}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Toggle Banned Items   §2- /function banitem"}]}
#tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§b► Toggle WorldBorder Size   §2- /function worldborder"}]}
tellraw @s[tag=wardenTrusted] {"rawtext":[{"text":"§¶§c---------------------------------"}]}
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=wardenTrusted] ~~~ function tools/asset/version

scoreboard players set @s lstcmd 1