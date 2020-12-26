// gcc `pkg-config --cflags gtk+-3.0` main.c -o maingtk `pkg-config --libs gtk+-3.0`

#include <gtk/gtk.h>

int main(int argc, char *argv[])
{
  GtkWidget *window;
  gtk_init(&argc, &argv);

  const gchar *const title = "Gtk.Window";
  gint width, height;

  window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(window), title);
  gtk_window_set_default_size(GTK_WINDOW(window), 800, 400);
  gtk_window_get_size(GTK_WINDOW(window), &width, &height);
  g_print("Width: %d, Height: %d\n", width, height);

  gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_MOUSE);
  gtk_window_get_position(GTK_WINDOW(window), &width, &height);
  g_print("PosX: %d, PosY: %d\n", width, height);

  g_signal_connect(window, "delete_event", gtk_main_quit, NULL);
  gtk_widget_show(window);

  gtk_main();
  return 0;
}