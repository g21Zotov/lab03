#!/usr/bin/lua5.1


lgi = require("lgi")

gtk = lgi.require ("Gtk","3.0")
gdk = lgi.Gdk
gtk.init()

bld = gtk.Builder()
bld:add_from_file("lab03.glade")

prov = gtk.CssProvider()
prov:load_from_path("lab03.css")

ctx = gtk.StyleContext()
scr = gdk.Screen.get_default()
ctx.add_provider_for_screen(scr, prov, gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)

ui = bld.objects
ui.my_window.title = "g21_Zotov lab 03"

opt = {ui.opt_a, ui.opt_b, ui.opt_c, ui.opt_d, ui.opt_e, ui.opt_f, ui.opt_g, ui.opt_h}

function update()
	x = 0
	y = 0
	z = 0
	if ui.chk_x.active == true then x = 1 end
	if ui.chk_y.active == true then y = 1 end
	if ui.chk_z.active == true then z = 1 end
	
	v = x + y * 2 + z * 2
	opt[v + 1].active = true
	
	ui.lab_val.label = v
end

function ui.chk_x:on_clicked(...)
	update()
end

function ui.chk_y:on_clicked(...)
	update()
end

function ui.chk_z:on_clicked(...)
	update()
end

ui.my_window.on_destroy = gtk.main_quit
ui.my_window:show_all()

gtk.main()
