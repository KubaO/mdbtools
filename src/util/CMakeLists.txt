project(utils VERSION ${AC_INIT_VERSION} LANGUAGES C)

set(MDB_INSTALL_UTILS
    mdb-export mdb-array mdb-schema mdb-tables mdb-parsecsv mdb-header
    mdb-sql mdb-ver mdb-prop mdb-count
)
set(MDB_UTILS
    mdb-import prtable prcat prdata prkkd prdump prole updrow prindex)

foreach(util IN LISTS MDB_INSTALL_UTILS MDB_UTILS)
    add_executable(${util} ${util}.c)
    target_link_libraries(${util} mdb)
endforeach(util)
#target_link_libraries(mdb-sql mdbsql)

