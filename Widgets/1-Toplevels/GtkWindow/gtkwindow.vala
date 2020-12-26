// valac --pkg gtk+-3.0 *.vala -o v && ./v 

using Gtk;

int main (string[] args) {
    Gtk.init (ref args);
    var window = new Window ();

    var title = "Hello Gtk!";
    window.title = title;
    int width, height;

    window.set_default_size (800, 400);
    window.get_default_size (out width, out height);
    print (@"Width: $width, Height: $height\n");

    window.set_position (MOUSE);
    window.get_position (out width, out height);
    print (@"PosX: $width, PosY: $height\n");

    window.destroy.connect (Gtk.main_quit);
    window.show_all ();

    Gtk.main ();
    return 0;
}