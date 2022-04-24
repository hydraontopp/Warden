execute @s[tag=wardenTrusted] ~~~ dialogue open @s @s uac_gui_main
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §bYou must be staff to do this command. The tag for staff is §6warden-Opped"}]}
