/obj/structure/frontier_beacon
	name = "Frontier Beacon"
	desc = "Огромный голубой космический маяк. Технология не похожа ни на что, что вы когда-либо видели, но очевидно, что он получает сигналы телепортации от шлюза за границей."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "frontier_beacon"
	anchored = TRUE
	density = FALSE

	var/id = ""

	var/citizenship_type

/obj/structure/frontier_beacon/New()
	..()
	GLOB.frontierbeacons |= src
	ADD_SAVED_VAR(citizenship_type)

/obj/structure/frontier_beacon/Destroy()
	. = ..()
	GLOB.frontierbeacons -= src