
/datum/preferences
	var/welcome_accept = 1

/datum/category_item/player_setup_item/welcome
	name = "Добро пожаловать в Persistent Station 13!"
	sort_order = 1

/datum/category_item/player_setup_item/welcome/content()
    . = list()
    . += "<head><meta charset= 'utf-8'></head><body>"
    . += "<center><h1>Добро пожаловать в Persistent Station 13!</h1></center><br><hr><br>"
    . += "<font size=4 color='orange'>"
    . += "Совершенно уникальное сюжетное сообщество. В Persistence сохраняется весь игровой мир и каждый персонаж в нем. Члены нашего сообщества создают структуры, организации и уникальных персонажей, чтобы оживить общую вселенную."
    . += "Избранное правительство создает законы, нанимает полицию для их исполнения и собирает налоги с частных предприятий, конкурирующих на нижних этажах космической станции Nexus City.<br><br>"
    . += "Члены нашего сообщества могут свободно создавать конфликты и волнения, если они играют разумных персонажей и работают с нашим замечательным административным персоналом, чтобы убедиться, что конфликт помогает создать хорошую историю для всех."
    . += "Расслабьтесь и повеселитесь в свой первый день. Вы - новый иммигрант в Нексус-Сити, и вам, возможно, придется потратить некоторое время на поиски работы или друзей.<br>"
    . += "Persistence - это результат работы десятков разработчиков, администраторов и лидеров сообщества, потративших годы на создание лучшего сообщества, частью которого я когда-либо был. Я очень рад, что у вас есть шанс сыграть в эту совершенно уникальную игру."
    . += "<br><b><i>Brawler, Ведущий разработчик Persistence</i></b>"
    . += "</font><br><br>"
    . += "<a href='https://discord.com/invite/ZgjJp7X6ed Присоединиться к Discord</a><br>Discord - это место, где происходит большинство OOC обсуждений, и тонны полезных игроков расскажут вам все о том, как играть в упорство и чем оно отличается."
    if(pref.welcome_accept)
        . += "<br><br><br><b>Вы готовы создать наследие в нашей общей вселенной.</b>"
    else
        . += "<br><br><br><a target='_blank' href='https://discord.gg/ZgjJp7X6ed' ?src=\ref[src];accept_welcome=1'>Я готов присоединиться к программе Persistence</a>"
    . += "</body>"
    . = jointext(.,null)


/datum/category_item/player_setup_item/welcome/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["accept_welcome"])
		pref.welcome_accept = 1
		return TOPIC_REFRESH
	. = ..()