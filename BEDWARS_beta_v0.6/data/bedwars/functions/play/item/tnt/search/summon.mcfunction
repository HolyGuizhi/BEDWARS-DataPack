#Guizhi

# 召喚
setblock ~ ~ ~ air
summon tnt ~ ~ ~ {Tags:["bedwars"],Fuse:60}

# 位置校正(太中間了)
# execute align xz run summon tnt ~0.5 ~ ~0.5 {Tags:["bedwars"],Fuse:60}

kill @e[tag=tnt_searcher,distance=..11]
