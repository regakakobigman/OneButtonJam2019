extends Node

var colors = [
Color.gray, Color.aliceblue, Color.antiquewhite, Color.aqua,
Color.aquamarine, Color.azure, Color.beige, Color.bisque, Color.black,
Color.blanchedalmond, Color.blue, Color.blueviolet, Color.brown,
Color.burlywood, Color.cadetblue, Color.chartreuse, Color.chocolate,
Color.coral, Color.cornflower, Color.cornsilk, Color.crimson, Color.cyan,
Color.darkblue, Color.darkcyan, Color.darkgoldenrod, Color.darkgray,
Color.darkgreen, Color.darkkhaki, Color.darkmagenta, Color.darkolivegreen,
Color.darkorange, Color.darkorchid, Color.darkred, Color.darksalmon,
Color.darkseagreen, Color.darkslateblue, Color.darkslategray,
Color.darkturquoise, Color.darkviolet, Color.deeppink, Color.deepskyblue,
Color.dimgray, Color.dodgerblue, Color.firebrick, Color.floralwhite,
Color.forestgreen, Color.fuchsia, Color.gainsboro, Color.ghostwhite,
Color.gold, Color.goldenrod, Color.green, Color.greenyellow, Color.honeydew,
Color.hotpink, Color.indianred, Color.indigo, Color.ivory, Color.khaki,
Color.lavender, Color.lavenderblush, Color.lawngreen, Color.lemonchiffon,
Color.lightblue, Color.lightcoral, Color.lightcyan, Color.lightgoldenrod,
Color.lightgray, Color.lightgreen, Color.lightpink, Color.lightsalmon,
Color.lightseagreen, Color.lightskyblue, Color.lightslategray,
Color.lightsteelblue, Color.lightyellow, Color.lime, Color.limegreen,
Color.linen, Color.magenta, Color.maroon, Color.mediumaquamarine,
Color.mediumblue, Color.mediumorchid, Color.mediumpurple, Color.mediumseagreen,
Color.mediumslateblue, Color.mediumspringgreen, Color.mediumturquoise,
Color.mediumvioletred, Color.midnightblue, Color.mintcream, Color.mistyrose,
Color.moccasin, Color.navajowhite, Color.navyblue, Color.oldlace, Color.olive,
Color.olivedrab, Color.orange, Color.orangered, Color.orchid,
Color.palegoldenrod, Color.palegreen, Color.paleturquoise, Color.palevioletred,
Color.papayawhip, Color.peachpuff, Color.peru, Color.pink, Color.plum,
Color.powderblue, Color.purple, Color.rebeccapurple, Color.red,
Color.rosybrown, Color.royalblue, Color.saddlebrown, Color.salmon,
Color.sandybrown, Color.seagreen, Color.seashell, Color.sienna, Color.silver,
Color.skyblue, Color.slateblue, Color.slategray, Color.snow, Color.springgreen,
Color.steelblue, Color.tan, Color.teal, Color.thistle, Color.tomato,
Color.turquoise, Color.violet, Color.webgray, Color.webgreen, Color.webmaroon,
Color.webpurple, Color.wheat, Color.white, Color.whitesmoke, Color.yellow,
Color.yellowgreen]


func rand_color() -> Color:
	var c = colors[randi() % colors.size()]
	return Color(c.r, c.g, c.b)
