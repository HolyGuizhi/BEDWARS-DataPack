#Guizhi

tellraw @a {"text":"===================================================","color":"gold"}
tellraw @a {"text":">> 點擊隊伍文字 加入隊伍："}
tellraw @a {"text":"","extra":[{"text":"  [藍隊]  ","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run team join blue"}},{"text":"  [紅隊]  ","color":"red","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run team join red"}},{"text":"  [黃隊]  ","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run team join yellow"}},{"text":"  [綠隊]  ","color":"green","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run team join green"}},{"text":"  [旁觀]  ","color":"gray","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run team join spec"}}]}
tellraw @a {"text":"","extra":[{"text":"  [隨機分 2 隊]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function bedwars:randteam2"}},{"text":"  [隨機分 3 隊]  ","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function bedwars:randteam3"}},{"text":"  [隨機分 4 隊]  ","color":"gold","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function bedwars:randteam4"}}]}
tellraw @a {"text":"===================================================","color":"gold"}

execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
