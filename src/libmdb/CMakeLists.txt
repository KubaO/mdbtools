project(libmdb VERSION ${AC_INIT_VERSION} LANGUAGES C)

add_library(mdb
    backend.c
    catalog.c
    data.c
    dump.c
    file.c
    iconv.c
    index.c
    like.c
    map.c
    mem.c
    money.c
    options.c
    props.c
    sargs.c
    stats.c
    table.c
    worktable.c
    write.c
)

target_include_directories(mdb BEFORE PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../../include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/../include>
)

target_link_libraries(mdb PkgConfig::GLIB2)

set(prefix 1) # TBD
set(exec_prefix 2)
set(libdir 3)
set(includedir 4)
configure_file(../../libmdb.pc.in libmdb.pc @ONLY)

install(TARGETS mdb EXPORT mdbtools
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
install(DIRECTORY ../../include
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR} PATTERN *.h
)
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/../include
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR} PATTERN *.h
)

install(EXPORT mdbtools DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/cmake)
