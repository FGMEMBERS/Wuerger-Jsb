# initialize listeners

weight1=func() {
	if (getprop("/payload/weight[1]/selected")=="none") {
		setprop("/payload/weight[1]/weight-lb", 0);
		setprop("/consumables/fuel/tank[3]/contents", 464.92);
		setprop("/consumables/fuel/tank[3]/selected", 0);
	}
	if (getprop("/payload/weight[1]/selected")=="Droptank") {
		setprop("/payload/weight[1]/weight-lb", 50);
		setprop("/consumables/fuel/tank[3]/contents", 464.92);
		setprop("/consumables/fuel/tank[3]/selected", 1);
	}
	if (getprop("/payload/weight[1]/selected")=="SC250 Bomb") {
		setprop("/payload/weight[1]/weight-lb", 552);
		setprop("/consumables/fuel/tank[3]/contents", 0);
		setprop("/consumables/fuel/tank[3]/selected", 0);
	}
}

weight2=func() {
	if (getprop("/payload/weight[2]/selected")=="none") {
		setprop("/payload/weight[2]/weight-lb", 0);
	}
	if (getprop("/payload/weight[2]/selected")=="MG 151 Machine gun") {
		setprop("/payload/weight[2]/weight-lb", 110);
	}
	if (getprop("/payload/weight[2]/selected")=="WGr 21 Rocket") {
		setprop("/payload/weight[2]/weight-lb", 270);
	}
}

weight3=func() {
	if (getprop("/payload/weight[3]/selected")=="none") {
		setprop("/payload/weight[3]/weight-lb", 0);
	}
	if (getprop("/payload/weight[3]/selected")=="MG 151 Machine gun") {
		setprop("/payload/weight[3]/weight-lb", 110);
	}
	if (getprop("/payload/weight[3]/selected")=="WGr 21 Rocket") {
		setprop("/payload/weight[3]/weight-lb", 270);
	}
}

setlistener("/payload/weight[1]/selected", weight1);
setlistener("/payload/weight[2]/selected", weight2);
setlistener("/payload/weight[3]/selected", weight3);


