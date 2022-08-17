#Guizhi

effect clear @s
gamemode survival @s
execute if score attack_speed num matches 0 run attribute @s generic.attack_speed base set 100.0
attribute @s generic.attack_damage base set 2.5
give @s wooden_sword{Unbreakable:1b,unsharp:1b,game:1b} 1

effect give @s instant_health 1 99 true
effect give @s resistance 2 99 true
execute as @s[team=blue] at @e[team=blue,tag=spawn] run tp @s ~ ~ ~
execute as @s[team=red] at @e[team=red,tag=spawn] run tp @s ~ ~ ~
execute as @s[team=yellow] at @e[team=yellow,tag=spawn] run tp @s ~ ~ ~
execute as @s[team=green] at @e[team=green,tag=spawn] run tp @s ~ ~ ~

title @s title {"text":"- 重生 -","color":"green"}
scoreboard players reset @s deathcount
