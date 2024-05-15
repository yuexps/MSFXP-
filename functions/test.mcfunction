#初始化所需计分板，实体（新地图请手动执行一次）

tellraw @a {"rawtext": [{"text": "§l§aMSFXP§r>> §b开始初始化环境..."}]}
scoreboard objectives add t dummy §l§a信息栏
#创建计分板t，用于显示剩余时间信息
scoreboard objectives setdisplay sidebar t
#设置计分板t显示位置
scoreboard objectives add s dummy
#创建计分板s，用于计算剩余时间
scoreboard objectives add random dummy
#创建计分板random，用于随机传送
scoreboard objectives add d1 dummy §l§d死亡统计
#创建计分板d1，用于显示死亡统计信息
scoreboard objectives setdisplay list d1
#设置计分板d1显示位置
scoreboard objectives add d2 dummy
#创建计分板d2，用于储存死亡数据
scoreboard objectives add d3 dummy
#创建计分板d3，用于检测死亡状态
structure load command 0 320 0
#在坐标0 320 0加载检测装置
tickingarea add 20 320 20 -20 320 -20 命令
#设置常加载
tellraw @a {"rawtext": [{"text": "§l§aMSFXP§r>> §b初始化完成！"}]}
