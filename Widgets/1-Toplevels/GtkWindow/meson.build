project('vala app', 'vala', 'c')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0'),
    dependency('gee-0.8'),
]

#add_global_arguments('--enable-experimental-non-null', language:'vala')
 
sources = files('gtkwindow.vala')

executable('gtkwindow', sources, dependencies: dependencies)