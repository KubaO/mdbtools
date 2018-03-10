# From: https://stackoverflow.com/a/34292622/1329652

# Get all propreties that cmake supports
execute_process(COMMAND cmake --help-property-list OUTPUT_VARIABLE CMAKE_PROPERTY_LIST)

# Convert command output into a CMake list
STRING(REGEX REPLACE ";" "\\\\;" CMAKE_PROPERTY_LIST "${CMAKE_PROPERTY_LIST}")
STRING(REGEX REPLACE "\n" ";" CMAKE_PROPERTY_LIST "${CMAKE_PROPERTY_LIST}")

function(print_target_properties tgt)
    if(NOT TARGET ${tgt})
        message("There is no target named '${tgt}'")
        return()
    endif()

    get_target_property(imported ${tgt} IMPORTED)
    foreach (prop ${CMAKE_PROPERTY_LIST})
        # Fix https://stackoverflow.com/questions/32197663/how-can-i-remove-the-the-location-property-may-not-be-read-from-target-error-i
        #message("-- ${prop}")
        if (prop STREQUAL "LOCATION" OR
            prop MATCHES "^LOCATION_" OR
            prop STREQUAL "<CONFIG>_LOCATION")
            continue()
        endif()
        if (imported AND (
            prop STREQUAL "<CONFIG>_OUTPUT_NAME" OR
            prop STREQUAL "<CONFIG>_POSTFIX"))
            continue()
        endif()
        string(REPLACE "<CONFIG>" "${CMAKE_BUILD_TYPE}" prop ${prop})
        if (imported AND NOT (
            prop MATCHES "^INTERFACE_" OR
            prop MATCHES "^_" OR
            prop MATCHES "^[a-z]" OR
            prop STREQUAL "COMPATIBLE_INTERFACE_BOOL" OR
            prop STREQUAL "COMPATIBLE_INTERFACE_NUMBER_MAX" OR
            prop STREQUAL "COMPATIBLE_INTERFACE_NUMBER_MIN" OR
            prop STREQUAL "COMPATIBLE_INTERFACE_STRING" OR
            prop STREQUAL "EXPORT_NAME" OR
            prop STREQUAL "IMPORTED" OR
            prop STREQUAL "IMPORTED_GLOBAL" OR
            prop STREQUAL "NAME" OR
            prop STREQUAL "TYPE" OR
            prop STREQUAL "IMPORTED_CONFIGURATIONS" OR
            prop STREQUAL "IMPORTED_LIBNAME" OR
            prop STREQUAL "NON_SYSTEM_FROM_IMPORTED" OR
            prop MATCHES "^IMPORTED_LIBNAME_" OR
            prop MATCHES "^MAP_IMPORTED_CONFIG_"
        ))
            continue()
        endif()
        # message ("Checking ${prop}")
        get_property(propval TARGET ${tgt} PROPERTY ${prop} SET)
        if (propval)
            get_target_property(propval ${tgt} ${prop})
            message ("${tgt} ${prop} = ${propval}")
        endif()
    endforeach(prop)
endfunction(print_target_properties)

print_target_properties(PkgConfig::GLIB2)
print_target_properties(glib2)