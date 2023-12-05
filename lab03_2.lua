#!/usr/bin/lua5.1


lgi = require("lgi")

gtk = lgi.require ("Gtk","3.0")
gtk.init()

bld = gtk.Builder()
bld:add_from_file("lab03_2.glade")

ui = bld.objects
ui.my_window.title = "Zotov 21 lab 03"

ui.n_entry.text = "0"

function bin()
	ui.chk_1.active = false
	ui.chk_2.active = false
	ui.chk_3.active = false
	ui.chk_4.active = false
	ui.chk_5.active = false
	ui.chk_6.active = false
	ui.chk_7.active = false
	ui.chk_8.active = false

	if ui.n_entry.text == "0" then num = {ui.chk_2, ui.chk_4, ui.chk_6, ui.chk_8} end
	if ui.n_entry.text == "1" then num = {ui.chk_2, ui.chk_4, ui.chk_6, ui.chk_7} end
	if ui.n_entry.text == "2" then num = {ui.chk_2, ui.chk_4, ui.chk_5, ui.chk_8} end
	if ui.n_entry.text == "3" then num = {ui.chk_2, ui.chk_4, ui.chk_5, ui.chk_7} end
	if ui.n_entry.text == "4" then num = {ui.chk_2, ui.chk_3, ui.chk_6, ui.chk_8} end
	if ui.n_entry.text == "5" then num = {ui.chk_2, ui.chk_3, ui.chk_6, ui.chk_7} end
	if ui.n_entry.text == "6" then num = {ui.chk_2, ui.chk_3, ui.chk_5, ui.chk_8} end
	if ui.n_entry.text == "7" then num = {ui.chk_2, ui.chk_3, ui.chk_5, ui.chk_7} end
	if ui.n_entry.text == "8" then num = {ui.chk_1, ui.chk_4, ui.chk_6, ui.chk_8} end
	if ui.n_entry.text == "9" then num = {ui.chk_1, ui.chk_4, ui.chk_6, ui.chk_7} end
	if ui.n_entry.text == "10" then num = {ui.chk_1, ui.chk_4, ui.chk_5, ui.chk_8} end
	if ui.n_entry.text == "11" then num = {ui.chk_1, ui.chk_4, ui.chk_5, ui.chk_7} end
	if ui.n_entry.text == "12" then num = {ui.chk_1, ui.chk_3, ui.chk_6, ui.chk_8} end
	if ui.n_entry.text == "13" then num = {ui.chk_1, ui.chk_3, ui.chk_6, ui.chk_7} end
	if ui.n_entry.text == "14" then num = {ui.chk_1, ui.chk_3, ui.chk_5, ui.chk_8} end
	if ui.n_entry.text == "15" then num = {ui.chk_1, ui.chk_3, ui.chk_5, ui.chk_7} end

	num[1].active = true
	num[2].active = true
	num[3].active = true
	num[4].active = true
end


ui.btn_bin.on_clicked = bin

ui.my_window.on_destroy = gtk.main_quit
ui.my_window:show_all()

gtk.main()
