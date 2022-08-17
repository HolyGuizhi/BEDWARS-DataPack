#Guizhi

scoreboard players remove @s fireball_count 1
execute as @s[tag=plyr_01] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_01"]}
execute as @s[tag=plyr_02] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_02"]}
execute as @s[tag=plyr_03] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_03"]}
execute as @s[tag=plyr_04] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_04"]}
execute as @s[tag=plyr_05] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_05"]}
execute as @s[tag=plyr_06] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_06"]}
execute as @s[tag=plyr_07] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_07"]}
execute as @s[tag=plyr_08] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_08"]}
execute as @s[tag=plyr_09] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_09"]}
execute as @s[tag=plyr_10] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_10"]}
execute as @s[tag=plyr_11] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_11"]}
execute as @s[tag=plyr_12] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_12"]}
execute as @s[tag=plyr_13] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_13"]}
execute as @s[tag=plyr_14] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_14"]}
execute as @s[tag=plyr_15] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_15"]}
execute as @s[tag=plyr_16] run summon fireball ~ ~ ~ {Tags:["bedwars","plyr_16"]}
execute as @e[type=fireball,limit=1,sort=nearest] run function bedwars:play/item/fireball/motion

playsound item.firecharge.use ambient @a ~ ~ ~
scoreboard players reset @s drop_fireball
