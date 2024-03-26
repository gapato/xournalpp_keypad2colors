-- Define the color HEX values, names and accelerators.
COLORS = {
	{ hex = 0x000000,  name = "black",        accel = "KP_0" },
	{ hex = 0x008000,  name = "green",        accel = "KP_1" },
	{ hex = 0x00c0ff,  name = "light blue",   accel = "KP_2" },
	{ hex = 0x00ff00,  name = "light green",  accel = "KP_3" },
	{ hex = 0x3333cc,  name = "blue",         accel = "KP_4" },
	{ hex = 0x808080,  name = "gray",         accel = "KP_5" },
	{ hex = 0xff0000,  name = "red",          accel = "KP_6" },
	{ hex = 0xff00ff,  name = "magenta",      accel = "KP_7" },
	{ hex = 0xff8000,  name = "orange",       accel = "KP_8" },
	{ hex = 0xffff00,  name = "yellow",       accel = "KP_9" },
	{ hex = 0xffffff,  name = "white",        accel = "KP_Add" }
}

-- Populate the Plugin menu with an entry for each color, bound to the accelerator.
-- It is not obvious from the documentation, but on can pass parameters to the callback using the "mode" key.
function initUi()
  for i, col in ipairs(COLORS) do
    app.registerUi({ ["menu"] = "Switch to " .. col.name, ["callback"] = "switchColor", ["accelerator"] = col.accel, ["mode"] = i })
  end
end

 -- Callback to change the tool color
function switchColor(mode)
  app.changeToolColor({ ["color"] = COLORS[mode].hex })
end
