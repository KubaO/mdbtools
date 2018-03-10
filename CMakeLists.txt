cmake_minimum_required(VERSION 3.6 FATAL_ERROR)
file(STRINGS configure.ac AC_INIT REGEX "^AC_INIT\\\(")
string(REGEX MATCH "\\\(.*\\[.+\\],.*\\[(.+)\\],.+\\\)" _ ${AC_INIT})
set(PACKAGE mdbtools)
set(VERSION ${CMAKE_MATCH_1})
project(${PACKAGE} VERSION ${VERSION})

option(verbose "Produce verbose cmake output.")

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

configure_file(include/mdbver.h.in include/mdbver.h @ONLY)

# this is to portably install libraries on all systems
include(GNUInstallDirs)

# glib2
find_package(GLib2 REQUIRED)
if (verbose)
    include(cmake/props_debug.cmake)
endif()

add_subdirectory(src)