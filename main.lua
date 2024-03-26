COLORS = {
	0x000000, -- 0
	0x008000, -- 1
	0x00c0ff, -- 2
	0x00ff00, -- 3
	0x3333cc, -- 4
	0x808080, -- 5
	0xff0000, -- 6
	0xff00ff, -- 7
	0xff8000, -- 8
	0xffff00, -- 9
	0xffffff, -- 10
}

-- Register all Toolbar actions and intialize all UI stuff
function initUi()
	app.registerUi({ ["menu"] = "Color 0", ["callback"] = "switchColor0", ["accelerator"] = "KP_0" })
	app.registerUi({ ["menu"] = "Color 1", ["callback"] = "switchColor1", ["accelerator"] = "KP_1" })
	app.registerUi({ ["menu"] = "Color 2", ["callback"] = "switchColor2", ["accelerator"] = "KP_2" })
	app.registerUi({ ["menu"] = "Color 3", ["callback"] = "switchColor3", ["accelerator"] = "KP_3" })
	app.registerUi({ ["menu"] = "Color 4", ["callback"] = "switchColor4", ["accelerator"] = "KP_4" })
	app.registerUi({ ["menu"] = "Color 5", ["callback"] = "switchColor5", ["accelerator"] = "KP_5" })
	app.registerUi({ ["menu"] = "Color 6", ["callback"] = "switchColor6", ["accelerator"] = "KP_6" })
	app.registerUi({ ["menu"] = "Color 7", ["callback"] = "switchColor7", ["accelerator"] = "KP_7" })
	app.registerUi({ ["menu"] = "Color 8", ["callback"] = "switchColor8", ["accelerator"] = "KP_8" })
	app.registerUi({ ["menu"] = "Color 9", ["callback"] = "switchColor9", ["accelerator"] = "KP_9" })
end

function switchColor0() app.changeToolColor({ ["color"] = COLORS[1] }) end
function switchColor1() app.changeToolColor({ ["color"] = COLORS[2] }) end
function switchColor2() app.changeToolColor({ ["color"] = COLORS[3] }) end
function switchColor3() app.changeToolColor({ ["color"] = COLORS[4] }) end
function switchColor4() app.changeToolColor({ ["color"] = COLORS[5] }) end
function switchColor5() app.changeToolColor({ ["color"] = COLORS[6] }) end
function switchColor6() app.changeToolColor({ ["color"] = COLORS[7] }) end
function switchColor7() app.changeToolColor({ ["color"] = COLORS[8] }) end
function switchColor8() app.changeToolColor({ ["color"] = COLORS[9] }) end
function switchColor9() app.changeToolColor({ ["color"] = COLORS[10] }) end
