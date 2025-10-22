schedule function vlvtrm:slowtick/3s 3s

#Welcome back
execute as @p[tag=vlvtrm.master,scores={vlvtrm.join=1..}] if entity @p[name=tasobot,tag=!tasobot.combat] run function vlvtrm:tasobot/greetings

#Fly
#execute as @p[tag=vlvtrm.master,nbt={abilities:{mayfly:false}}] run player_ability @s fly true