find_package(BISON REQUIRED)
find_package(FLEX REQUIRED)
BISON_TARGET(Parser parser.y ${CMAKE_CURRENT_BINARY_DIR}/parser.c
             DEFINES_FILE    ${CMAKE_CURRENT_BINARY_DIR}/parser.h
             COMPILE_FLAGS   -d)
FLEX_TARGET(Lexer lexer.l    ${CMAKE_CURRENT_BINARY_DIR}/lexer.c)
ADD_FLEX_BISON_DEPENDENCY(Lexer Parser)

add_library(mdb_sql
    mdbsql.c
    ${BISON_Parser_OUTPUTS}
    ${FLEX_Lexer_OUTPUTS}
)

target_link_libraries(mdb_sql mdb)

#lib_LTLIBRARIES	=	libmdbsql.la
#libmdbsql_la_LDFLAGS = -version-info 2:0:0 -export-symbols-regex '^mdb_sql_'
#AM_CFLAGS	=	-I$(top_srcdir)/include $(GLIB_CFLAGS)
#LIBS	=	$(GLIB_LIBS)
#libmdbsql_la_LIBADD =	../libmdb/libmdb.la
#YACC = @YACC@ -d
