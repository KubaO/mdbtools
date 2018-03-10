include(CheckFunctionExists)
include(CheckIncludeFiles)

get_cmake_property(_prev_variable_names VARIABLES)

check_function_exists(strptime HAVE_STRPTIME)

get_cmake_property(_variable_names VARIABLES)
list(REMOVE_ITEM _variable_names ${_prev_variable_names})
foreach(_var_name IN LISTS _variable_names)
    if (_var_name MATCHES "^HAVE_")
        if (${${_var_name}})
            message("-D${_var_name}")
            add_definitions("-D${_var_name}")
        endif()
    endif()
endforeach(_var_name)

add_subdirectory(libmdb)
add_subdirectory(extras)
add_subdirectory(util)
add_subdirectory(sql)

#add_subdirectory(odbc)
#add_subdirectory(gmdb2)