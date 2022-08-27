#Guizhi

execute as @s[team=blue] run tag @e[type=snowball,limit=1,sort=nearest] add blue_fish
execute as @s[team=red] run tag @e[type=snowball,limit=1,sort=nearest] add red_fish
execute as @s[team=yellow] run tag @e[type=snowball,limit=1,sort=nearest] add yellow_fish
execute as @s[team=green] run tag @e[type=snowball,limit=1,sort=nearest] add green_fish
scoreboard players reset @s use_snowball
