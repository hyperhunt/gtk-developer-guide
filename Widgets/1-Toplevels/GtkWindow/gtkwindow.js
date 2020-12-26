#!/usr/bin/gjs
// gjs gtkwindow.js

imports.gi.versions.Gtk = '3.0';
const {GObject, Gtk} = imports.gi;

Gtk.init(null);

let window = new Gtk.Window();
let title = "Hello Gtk!";
window.set_title (title);

window.set_default_size (800, 400);
let [width, height] = window.get_default_size ();
print (`Width: ${width}, Height: ${height}`);

window.set_position (Gtk.WindowPosition.MOUSE);
[width, height] = window.get_position ();
print (`PosX: ${width}, PosY: ${height}`);

window.connect("delete-event", () => Gtk.main_quit());
window.show_all();
Gtk.main();