#Guardian Angel
execute as @p[name=tasobot,tag=tasobot.combat] at @s as @n[type=#monsters] run function vlvtrm:tasobot/combat/combat

#PVP
execute as @p[name=tasobot,tag=tasobot.pvp] at @s as @p[name=!tasobot] run function vlvtrm:tasobot/combat/combat

#Heat Riser
execute as @p[name=tasobot,tag=tasobot.combat,scores={tasobot.heatriser=0}] at @s run function vlvtrm:tasobot/skill/heat_riser