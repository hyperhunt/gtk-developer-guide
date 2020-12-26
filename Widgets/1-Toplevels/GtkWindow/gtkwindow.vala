// valac --pkg gtk+-3.0 *.vala -o v && ./v 

using Gtk;

//  void window_move (Window window) {
//      int width, height;
//      window.move (100, 100);
//      window.get_position (out width, out height);
//      print (@"PosX: $width, PosY: $height\n");
//  }

void load_css(){
    var css_provider = new Gtk.CssProvider ();
    var screen = Gdk.Screen.get_default ();
    string path = "style.css";
    
    if (FileUtils.test (path, FileTest.EXISTS))
        {
            try {
                css_provider.load_from_path(path);
                Gtk.StyleContext.add_provider_for_screen(
                    screen,
                    css_provider,
                    Gtk.STYLE_PROVIDER_PRIORITY_USER
                );
            } catch (Error e) {
                error (@"Cannot load CSS stylesheet: $(e.message)");
            }
        }
}

int main (string[] args) {
    Gtk.init (ref args);
    var window = new Window (TOPLEVEL);
    window.set_border_width (30);
    load_css();

    var title = "Vala";
    window.title = title;
    int width, height;

    window.set_default_size (200, 225);
    window.get_default_size (out width, out height);
    print (@"Width: $width, Height: $height\n");

    window.set_position (CENTER); // MOUSE
    window.get_position (out width, out height);
    print (@"PosX: $width, PosY: $height\n");

    // window_move(window);

    // Button
    var button = new Gtk.Button.with_label ("Awesome button...");
    button.set_name ("btn_red");
    window.add (button);

    window.destroy.connect (Gtk.main_quit);
    window.show_all ();

    Gtk.main ();
    return 0;
}