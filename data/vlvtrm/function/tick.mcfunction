#This function runs every tick

#Tasobot Skills
scoreboard players remove @p[name=tasobot,scores={tasobot.heatriser=1..1200}] tasobot.heatriser 1
scoreboard players remove @p[name=tasobot,scores={tasobot.heal=1..1200}] tasobot.heal 1
scoreboard players remove @p[name=tasobot,scores={tasobot.attack=1..18}] tasobot.attack 1

#Save point
execute as @e[type=item_display,tag=vlvtrm.save] at @s run tp @s ~ ~ ~ ~10 0