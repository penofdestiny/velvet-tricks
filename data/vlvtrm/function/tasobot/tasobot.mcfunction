#Skills

#Look at nearest player
execute as @a[tag=tasobot.looking,tag=!tasobot.combat] at @s run rotate @s facing entity @p[tag=!tasobot.ignore,tag=!tasobot,distance=..6,gamemode=!spectator]

#Following
execute as @a[tag=tasobot,tag=!tasobot.combat] unless entity @s[tag=!tasobot.party,tag=!tasobot.party1,tag=!tasobot.party2] at @s run function vlvtrm:tasobot/movement/party

#TP
execute as @a[tag=tasobot.party,tag=!tasobot.pvp] at @s if entity @p[tag=tasobot.following,distance=32..,gamemode=!spectator] run tp @p[tag=tasobot.following]
execute as @a[tag=tasobot.party1,tag=!tasobot.pvp] at @s if entity @p[tag=tasobot.party,distance=32..] run tp @p[tag=tasobot.party]
execute as @a[tag=tasobot.party2,tag=!tasobot.pvp] at @s if entity @p[tag=tasobot.party1,distance=32..] run tp @p[tag=tasobot.party1]

#Combat
execute as @a[tag=tasobot.guardian,tag=!tasobot.pvp] at @s at @n[type=#hostile,distance=..32] if predicate vlvtrm:tasobot/monster run function vlvtrm:tasobot/combat/monster
execute as @a[tag=tasobot.guardian,tag=!tasobot.pvp,tag=tasobot.combat] at @s at @n[type=#hostile] unless predicate vlvtrm:tasobot/monster run function vlvtrm:tasobot/combat/stop

#PVP
execute as @a[tag=tasobot.pvp] at @s run function vlvtrm:tasobot/combat/pvp
#Will autostop at some point 

#Taso eats nakau (pretend edition)
scoreboard players remove @a[tag=tasobot,scores={tasobot.cd.food=1..}] tasobot.cd.food 1
execute as @a[tag=tasobot,scores={vlvtrm.food=..6,tasobot.cd.food=0}] run function vlvtrm:tasobot/food