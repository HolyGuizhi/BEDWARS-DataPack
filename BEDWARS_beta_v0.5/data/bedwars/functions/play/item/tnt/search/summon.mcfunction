#Guizhi

# 召喚
setblock ~ ~ ~ air
summon tnt ~ ~ ~ {Tags:["bedwars"],Fuse:60}

# 位置校正(太中間了)
# execute as @e[type=tnt,sort=nearest,limit=1] run function bedwars:play/item/tnt/search/position

kill @e[tag=tnt_searcher,distance=..11]
