#Deny if not staff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide

#Check for which alerts are enabled
execute @s[scores={ironmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Iron Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={ironmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Iron Alerts §7[ §cDISABLED §7]"}]}

execute @s[scores={goldmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Gold Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={goldmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Gold Alerts §7[ §cDISABLED §7]"}]}

execute @s[scores={emeraldmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Emerald Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={emeraldmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Emerald Alerts §7[ §cDISABLED §7]"}]}

execute @s[scores={lapizmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Lapis Lazuli Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={lapizmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Lapis Lazuli Alerts §7[ §cDISABLED §7]"}]}

execute @s[scores={diamondmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Diamond Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={diamondmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Diamond Alerts §7[ §cDISABLED §7]"}]}

execute @s[scores={scrapmd=1},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Netherite Scrap Alerts §7[ §2ENABLED §7]"}]}
execute @s[scores={scrapmd=0},tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Netherite Scrap Alerts §7[ §cDISABLED §7]"}]}
