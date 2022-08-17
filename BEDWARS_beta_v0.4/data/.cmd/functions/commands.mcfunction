#Guizhi

tellraw @s {"text":"===================================================","color":"gold"}
tellraw @s {"text":">> 設置特殊資源點 (請直接點擊文字使用)："}
tellraw @s {"text":"   ","extra":[{"text":" [設置鑽石點] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/diamond"}},{"text":" [設置綠寶石點] ","color":"green","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/emerald"}}]}
tellraw @s {"text":">> 設置商人："}
tellraw @s {"text":"   ","extra":[{"text":" [物品商人] ","color":"gold","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/item_shop"}},{"text":" [隊伍升級商人] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/team_shop"}}]}
tellraw @s {"text":">> 設置玩家重生點："}
tellraw @s {"text":"   ","extra":[{"text":" [藍隊重生點] ","color":"blue","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/blue_spawn"}},{"text":" [紅隊重生點] ","color":"red","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/red_spawn"}},{"text":" [黃隊重生點] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/yellow_spawn"}},{"text":" [綠隊重生點] ","color":"green","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/green_spawn"}}]}
tellraw @s {"text":">> 設置隊伍資源生成點："}
tellraw @s {"text":"   ","extra":[{"text":" [藍隊資源點] ","color":"blue","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/blue_resource"}},{"text":" [紅隊資源點] ","color":"red","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/red_resource"}},{"text":" [黃隊資源點] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/yellow_resource"}},{"text":" [綠隊資源點] ","color":"green","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/green_resource"}}]}
tellraw @s {"text":">> 設置床點："}
tellraw @s {"text":"   ","extra":[{"text":" (直接放置該隊顏色的床即可 設置成功會跳出提示)  ","bold":true,"color":"gray"}]}
tellraw @s {"text":">> 移除設置點："}
tellraw @s {"text":"   ","extra":[{"text":" [移除最近的鑽石點] ","color":"red","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/remove_diamond"}},{"text":" [移除最近的綠寶石點] ","color":"red","clickEvent":{"action":"run_command","value":"/function bedwars:setpoint/remove_emerald"}}]}
tellraw @s {"text":""}
tellraw @s {"text":">> 遊戲執行："}
tellraw @s {"text":"   ","extra":[{"text":" [開始遊戲] ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function .cmd:start"}},{"text":" [中斷遊戲] ","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function cmd:interrupt"}}]}
tellraw @s {"text":""}
tellraw @s {"text":">> 其他功能："}
tellraw @s {"text":"   ","extra":[{"text":" [切換玩家攻擊速度] ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function bedwars:set_attackspeed"}}]}
tellraw @s {"text":""}
tellraw @s {"text":"   ","extra":[{"text":" [重置一切設置] ","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function .cmd:reset"}},{"text":" [隊伍分配] ","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run function .cmd:team"}},{"text":" [清除周圍方塊] ","color":"green","clickEvent":{"action":"run_command","value":"/execute unless score playing num matches 1 run scoreboard players set @s clear_block 1"}},{"text":" [停止清除周圍方塊] ","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players reset @s clear_block"}}]}
tellraw @s {"text":"===================================================","color":"gold"}

playsound entity.experience_orb.pickup ambient @s ~ ~ ~
