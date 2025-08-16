schedule function vlvtrm:tasobot/movement/wander 5s

execute as @a[tag=!tasobot.combat,tag=tasobot.wandering] at @s if entity @p[tag=vlvtrm.master,distance=..96] unless entity @p[tag=!tasobot.ignore,tag=!tasobot,distance=..6] run function vlvtrm:tasobot/movement/wander_check

#Waving
execute as @a[tag=!tasobot.combat,tag=tasobot.looking,predicate=vlvtrm:rng/5p] at @s if entity @p[tag=vlvtrm.master,distance=..96] if entity @p[tag=!tasobot.ignore,tag=!tasobot,distance=..6] run emotes play Waving @s