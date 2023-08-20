summon armor_stand ~ ~-3 ~ {Invisible:1b,Tags:["time"],ActiveEffects:[{Id:11,Amplifier:5b,Duration:72000,ShowParticles:0b}]}
scoreboard objectives add morning dummy
bossbar add morning "昼残り時間"
bossbar set morning max 2400
scoreboard players set @e[type=armor_stand,tag=time] morning 600
bossbar add night "夜残り時間"
bossbar set night max 12000
bossbar set morning color yellow
bossbar set night color blue
bossbar set night visible false
bossbar set morning players @a
bossbar set night players @a
time set 11400
scoreboard objectives add death deathCount