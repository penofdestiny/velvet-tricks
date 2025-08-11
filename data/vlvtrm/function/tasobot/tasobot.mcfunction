#Look at nearest entity
execute as @a[tag=tasobot.looking] at @s run rotate @s facing entity @p[tag=!tasobot,distance=..16]

#Following
execute as @p[name=tasobot,tag=!tasobot.combat] at @s as @p[tag=tasobot.following] run function vlvtrm:tasobot/follow
execute as tasobot at @s as @p[name=!tasobot,tag=tasobot.following,distance=24..] run tp tasobot @s

#Flying
execute as @p[name=!tasobot,tag=tasobot.following,predicate=vlvtrm:tasobot/flying] at @s unless block ~ ~ ~ water run function vlvtrm:tasobot/skill/fly
execute as @p[name=!tasobot,tag=tasobot.following,predicate=!vlvtrm:tasobot/flying] run player_ability tasobot fly false

#Open door
execute as tasobot at @s if block ^ ^ ^ #minecraft:doors[open=false] run player tasobot use
execute as tasobot at @s if block ^ ^1 ^1 #minecraft:doors[open=false] run player tasobot use

#Combat
execute as @p[name=tasobot,tag=!tasobot.combat] at @s if entity @s[tag=!tasobot.pvp] if entity @n[type=#monsters,distance=..24] run tag tasobot add tasobot.combat
execute as @p[name=tasobot,tag=tasobot.combat] at @s unless entity @n[type=#monsters,distance=..24] run function vlvtrm:tasobot/combat/stop