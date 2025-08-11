player tasobot hotbar 1
execute as @s at @s run player tasobot look at ~ ~0.5 ~
execute as @s at @s run player tasobot move forward
execute as @s[distance=8..] at @s run player tasobot sprint
execute as @s[distance=..3] at @s run player tasobot unsprint
execute as @s[distance=..3] at @s run player tasobot move backward
execute as @s[distance=..3] at @s if entity @p[name=tasobot,predicate=vlvtrm:tasobot/flying] run motion tasobot forward -0.5
execute as @s[distance=..3,predicate=vlvtrm:50chance] at @s run player tasobot move left
execute as @s[distance=..3,predicate=!vlvtrm:50chance] at @s run player tasobot move right
execute as @s[distance=..4] at @s if score tasobot tasobot.attack matches 0 run player tasobot attack
execute as @s[distance=..4] at @s if score tasobot tasobot.attack matches 0 run scoreboard players set tasobot tasobot.attack 18