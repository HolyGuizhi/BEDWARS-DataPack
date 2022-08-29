#Guizhi

execute as @s[scores={destroy_bluebed=1..}] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 摧毀了","color":"white"},{"text":"藍隊","color":"blue","bold":true},{"text":"的床！","color":"white"}]
execute as @s[scores={destroy_redbed=1..}] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 摧毀了","color":"white"},{"text":"紅隊","color":"red","bold":true},{"text":"的床！","color":"white"}]
execute as @s[scores={destroy_yellowbed=1..}] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 摧毀了","color":"white"},{"text":"黃隊","color":"yellow","bold":true},{"text":"的床！","color":"white"}]
execute as @s[scores={destroy_greenbed=1..}] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 摧毀了","color":"white"},{"text":"綠隊","color":"green","bold":true},{"text":"的床！","color":"white"}]

scoreboard players add @s destroy_beds 1
scoreboard players reset @s destroy_bluebed
scoreboard players reset @s destroy_redbed
scoreboard players reset @s destroy_yellowbed
scoreboard players reset @s destroy_greenbed
