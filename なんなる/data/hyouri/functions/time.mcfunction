scoreboard players remove @e[type=armor_stand,tag=time,scores={morning=1..}] morning 1
execute store result bossbar morning value run scoreboard players get @e[type=armor_stand,tag=time,limit=1] morning
scoreboard players remove @e[type=armor_stand,tag=time,scores={night=1..}] night 1
execute store result bossbar night value run scoreboard players get @e[type=armor_stand,tag=time,limit=1] night
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run scoreboard objectives add night dummy
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run bossbar add night "夜残り時間"
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run time set night
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run bossbar set night max 12000
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run scoreboard players set @s night 12000
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run difficulty hard
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run bossbar set morning visible false
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run bossbar set night visible true
execute as @e[type=armor_stand,tag=time,scores={morning=0}] run scoreboard objectives remove morning
execute as @e[type=armor_stand,tag=time,scores={night=0}] run scoreboard objectives add night dummy
execute as @e[type=armor_stand,tag=time,scores={night=0}] run time set day
execute as @e[type=armor_stand,tag=time,scores={night=0}] run bossbar add morning "昼残り時間"
execute as @e[type=armor_stand,tag=time,scores={night=0}] run bossbar set morning max 12000
execute as @e[type=armor_stand,tag=time,scores={night=0}] run scoreboard players set @s morning 12000
execute as @e[type=armor_stand,tag=time,scores={night=0}] run difficulty peaceful
execute as @e[type=armor_stand,tag=time,scores={night=0}] run bossbar set morning visible true
execute as @e[type=armor_stand,tag=time,scores={night=0}] run bossbar set night visible false
execute as @e[type=armor_stand,tag=time,scores={night=0}] run scoreboard objectives remove night
execute as @a[nbt={SleepTimer:100s}] at @s run tp ~ ~5 ~