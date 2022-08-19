#Guizhi

function bedwars:play/end_game

title @a title {"text":"- 遊戲中斷 -","color":"red"}
execute if score error num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 場上已無任何玩家 ","color":"red"}]
scoreboard players reset error
execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~
