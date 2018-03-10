find_package(PkgConfig REQUIRED) # for glib
pkg_search_module(GLIB2 REQUIRED IMPORTED_TARGET glib-2.0)

# add_library(glib2 ALIAS PkgConfig::GLIB2) - doesn't work yet in cmake 3.10
# Thus we have to transfer the properties individually.
add_library(glib2 INTERFACE IMPORTED)
foreach(prop IMPORTED INTERFACE_INCLUDE_DIRECTORIES INTERFACE_LINK_LIBRARIES)
    set(tgt PkgConfig::GLIB2)
    get_property(propval TARGET ${tgt} PROPERTY ${prop} SET)
    if (propval)
        get_target_property(propval ${tgt} ${prop})
        set_property(TARGET glib2 PROPERTY ${prop} "${propval}")
    endif()
endforeach(prop)
