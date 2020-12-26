#!/usr/bin/python
# python gtkwindow.py  

import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

window = Gtk.Window()

title = "Hello Gtk!"
window.set_title (title)
window.set_default_size (800, 400)
width, height = window.get_default_size ()
print ("Width: %d, Height: %d"% (width, height))

window.set_position (Gtk.WindowPosition.MOUSE)
width, height = window.get_position ()
print ("PosX: %d, PosY: %d"% (width, height))

window.connect("destroy", Gtk.main_quit)
window.show_all()

Gtk.main()
