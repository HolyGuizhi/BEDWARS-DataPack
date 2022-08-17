#Guizhi

# 原位召喚
# execute if block ~-1 ~ ~ tnt run summon tnt ~-1 ~ ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~1 ~ ~ tnt run summon tnt ~ ~ ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~-1 ~ tnt run summon tnt ~ ~-1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~1 ~ tnt run summon tnt ~ ~1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~ ~-1 tnt run summon tnt ~ ~ ~-1 {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~ ~1 tnt run summon tnt ~ ~ ~1 {Tags:["bedwars"],Fuse:60}

# execute if block ~ ~-1 ~-1 tnt run summon tnt ~ ~-1 ~-1 {Tags:["bedwars"],Fuse:60}
# execute if block ~-1 ~ ~-1 tnt run summon tnt ~-1 ~ ~-1 {Tags:["bedwars"],Fuse:60}
# execute if block ~-1 ~-1 ~ tnt run summon tnt ~-1 ~-1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~1 ~1 tnt run summon tnt ~ ~1 ~1 {Tags:["bedwars"],Fuse:60}
# execute if block ~1 ~ ~1 tnt run summon tnt ~1 ~ ~1 {Tags:["bedwars"],Fuse:60}
# execute if block ~1 ~1 ~ tnt run summon tnt ~1 ~1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~1 ~ ~-1 tnt run summon tnt ~1 ~ ~-1 {Tags:["bedwars"],Fuse:60}
# execute if block ~-1 ~ ~1 tnt run summon tnt ~-1 ~ ~1 {Tags:["bedwars"],Fuse:60}
# execute if block ~1 ~-1 ~ tnt run summon tnt ~1 ~-1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~-1 ~1 ~ tnt run summon tnt ~-1 ~1 ~ {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~1 ~-1 tnt run summon tnt ~ ~1 ~-1 {Tags:["bedwars"],Fuse:60}
# execute if block ~ ~-1 ~1 tnt run summon tnt ~ ~-1 ~1 {Tags:["bedwars"],Fuse:60}

# 粗略召喚
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace tnt
summon tnt ~ ~ ~ {Tags:["bedwars"],Fuse:60}
kill @s
