schedule function vlvtrm:slowtick/10s 10s

#Attrib
attribute @p[tag=vlvtrm.master] movement_speed modifier add fast 0.25 add_multiplied_total
attribute @p[tag=vlvtrm.master] luck base set 2
attribute @p[tag=vlvtrm.master] scale base set 0.9

execute as @a[tag=tasobot] run attribute @s attack_damage modifier add gorilla 0.25 add_multiplied_total
execute as @a[tag=tasobot] run attribute @s scale base set 0.9
execute as @a[tag=tasobot] run attribute @s step_height base set 1.25