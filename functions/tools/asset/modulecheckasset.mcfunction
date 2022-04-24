execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}

execute @s[tag=wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§c========= Protection Modules ========="}]}
execute @s[tag=wardenTrusted,scores={NFM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Frostwalker §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={NFM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Frostwalker §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={OSM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bOneShot Detection §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={OSM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bOneShot Detection §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={AFM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Fly §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={AFM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Fly §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={ACM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-CBE §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={ACM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-CBE §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={UOIM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bNo Unobtainable Items §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={UOIM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bNo Unobtainable Items §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={IBM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bCustom Item Ban §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={IBM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bCustom Item Ban §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={DAM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bNo Enchanted Armor §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={DAM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bNo Enchanted Armor §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={MDM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bMining Detection §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={MDM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bMining Detection §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={clmtoggle=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-C Logging §7[ §¶§2KILL MODE §7]"}]}
execute @s[tag=wardenTrusted,scores={clmtoggle=2}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-C Logging §7[ §¶§2CLEAR MODE §7]"}]}
execute @s[tag=wardenTrusted,scores={clmtoggle=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-C Logging §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={armtoggle=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Reach §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={armtoggle=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Reach §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§c========= Utility Modules ========="}]}
execute @s[tag=wardenTrusted,scores={TPM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bTimePlayed Tracker §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={TPM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bTimePlayed Tracker §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={LTM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAuto Lagclear §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={LTM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAuto Lagclear §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={HMM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bHotbar Message §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={HMM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bHotbar Message §7[ §¶§2ENABLED Mode 2§7]"}]}
execute @s[tag=wardenTrusted,scores={HMM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bHotbar Message §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={ICM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bPlayer Commands §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={ICM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bPlayer Commands §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={afkm=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAfk Kick §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={afkm=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAfk Kick §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={NEM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bDisable-Echest §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={NEM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bDisable-Echest §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={BBM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bBottom Bedrock Replace §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={BBM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bBottom Bedrock Replace §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={WBM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bWorld Border §7[ §¶§2ENABLED §7]"},{"text":" §bX§7: §7[§6"},{"score":{"name":"@s","objective":"Border_Coord_X"}},{"text":"§7]"},{"text":" §bZ§7: §7[§6"},{"score":{"name":"@s","objective":"Border_Coord_Z"}},{"text":"§7]"}]}
execute @s[tag=wardenTrusted,scores={WBM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bWorld Border §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={RSM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bRandom Spawn §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={RSM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bRandom Spawn §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={Deathef=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bDeath Effects §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={Deathef=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bDeath Effects §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§c========= Advanced Modules ========="}]}   

execute @s[tag=wardenTrusted,scores={SSM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bFake Staff Protection §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={SSM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bFake Staff Protection §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted,scores={OPAM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Op Abuse §7[ §¶§2ENABLED §7]"}]}
execute @s[tag=wardenTrusted,scores={OPAM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶►§¶§bAnti-Op Abuse §7[ §¶§cDISABLED §7]"}]}

execute @s[tag=wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§c=== Use ``/function toggle` to toggle modules==="}]}


#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
