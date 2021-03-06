# Changelog for 0.8.1
* Format README as Github Markdown: @joshuapinter #3
* Updated changelog markdown format and will keep it in slightly different style: @cyberemissary #7
* Updated README with info about this (@cyberemissary) repository and distributed package: @cyberemissary #7
* Use bigger buffer when reading big blobs for better performance: @jimmytaker #6
* Use bulk inserts on supporting platforms for significantly better performance: @cyberemissary #8
* Added mdb-count utility to return row count in tables: @kodonnell #4
* Update unknown flag to ddl flag for properties: @jahlborn #1
* Print unknown Jet versions in libmdb: @mdjnewman #2

# Changelog for <= 0.7.1

### Tue Aug 30 08:51:31 EDT 2016 Brian Bruns <brian@bruns.com>
* bug fix for 'bad' data with odd number of UCS-2 bytes

### Tue Aug 30 08:40:00 EDT 2016	Brian Bruns <brian@bruns.com>
* add LIMIT clause to SQL engine

### Tue May 23 19:40:55 CDT 2006	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-export.c: Fix typo in help text
* configure.in: Clean up use of autoconf macros
* src/gmdb2/util.c: Update call from Gtk+ 1.2 to 2.0

### Sat Dec 17 03:49:30 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-sql.c: Add fflush after each newline (Pedro Gutierrez)
* src/libmdb/table.c: Bugfix to read_pg_if_n (Mike Prudence)
* src/libmdb/table.c:
* src/libmdb/index.c:
* include/mdbtools.h: Tidy up read_pg_in* functions

### Wed Nov  9 07:23:01 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-array.c:
* src/util/mdb-header.c:
* src/util/mdb-sql.c:
* src/sql/parser.y: Fix several leaks and errors

### Fri Nov  4 06:10:41 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Fix in reading bound boolean fields (Yasir Assam)
* src/libmdb/data.c: Several more fixes in reading data into bound fields

### Mon Oct 17 06:25:44 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-prop.c: General cleanup
* HACKING: Correct info about MDBICONV
* include/mdbtools.h:
* src/libmdb/backend.c: Make backend_name parameter a const char *
* include/mdbsql.h:
* src/sql/mdbsql.c: Make varaddr parameter a void *
* src/libmdb/data.c: Use correct parameter in mdb_col_to_string
* src/util/prole.c: Utilize mdb_bind_column_by_name

### Wed Sep  7 08:28:28 EDT 2005	Brian Bruns <brian@bruns.com>
* src/util/mdb-export.c: Add -q and -X flags.  Make -R and -d handle escaped characters properly
* doc/mdb-export.txt: Update for new flags
* src/util/mdb-export.c: Bug 1219521.  Print error when table not found.
* src/util/Makefile.am: move debugging programs to noinst
* doc/faq.html: Update version number on expected write support.
* doc/install.sgml: Add info about MDBICONV and MDB_JET3_CHARSET
* src/util/mdb-sql.c: Fix -o option

### Tue Aug 30 21:24:46 EDT 2005	Brian Bruns <brian@bruns.com>
* configure.in:	add --disable-gmdb2 switch

### Tue Aug  9 23:36:01 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-prop.c: Use correct index for command line options

### Fri Aug  5 10:49:57 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/iconv.h: Use size_t instead of unsigned int for calling iconv

### Sat Jul  2 02:12:39 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/dump.c:
* src/libmdb/index.c:
* src/libmdb/props.c:
* src/libmdb/table.c:
* src/libmdb/write.c: Alter buffer_dump's third parameter from 'end' to 'length'

### Mon Jun 27 23:52:15 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/gmdb2/debug.c:
* src/libmdb/data.c:
* src/libmdb/file.c:
* src/libmdb/write.c:
* src/util/prfreemap.c:
* src/util/prindex.c: Use more appropriate types (void *, size_t)

### Thu Jun 23 00:40:32 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/write.c: Use col->is_fixed member directly
* doc/reference/libmdb/libmdb-sections.txt:
* include/mdbtools.h:
* src/libmdb/file.c:
* src/libmdb/index.c:
* src/libmdb/write.c: Remove remaining int24 uses

### Sat Jun 18 01:49:03 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/gmdb2/gladefiles/gmdb-debug.glade:
* src/gmdb2/debug.c: Fix several lockups, leaks, and warnings

### Thu Jun 16 21:19:37 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Fix segmentation fault
* src/libmdb/write.c: Fix bug in handling certain 'jump tables'
* src/util/mdb-schema.c: Handle 'file not found' case
* src/libmdb/catalog.c: Fix some potential segmentation faults

### Mon May  2 07:28:58 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/dump.c:
* src/libmdb/file.c:
* src/libmdb/iconv.c:
* src/libmdb/index.c:
* src/libmdb/table.c:
* src/util/mdb-import.c:
* src/util/prindex.c:
* src/util/updrow.c: Clean up some gcc4 warnings

### Thu Apr 28 21:34:57 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-check.c:
* src/util/sargtest.c: Remove an unused variable and a noop
* src/libmdb/backend.c:
* src/libmdb/iconv.c:
* src/libmdb/table.c:
* src/odbc/unittest.c: Clean up some gcc4 warnings and errors

### Sat Apr  9 15:40:17 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/gmdb2/gladefiles/gmdb-debug.glade:
* src/gmdb2/gladefiles/gmdb-schema.glade:
* src/gmdb2/gladefiles/gmdb-sql.glade:
* src/gmdb2/gladefiles/gmdb.glade: Gladefile fixes (Edward Catmur)

### Fri Apr  8 20:36:51 CDT 2005	Jeff Smith <whydoubt@yahoo.com>
* src/gmdb2/gladefiles/Makefile.am:
* src/gmdb2/Makefile.am: Clean up minor gmdb makefile issues
* include/mdbsql.h: Improve C++ compatibility (Horst Knorr)

### Wed Mar 30 23:21:25 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* autogen.sh: Improve order of autotools calls
* config.cache:
* install-sh:
* missing:
* mkinstalldirs: Remove files generated by autotools toolchain
* .cvsignore: Ignore files generated by autotools toolchain

### Mon Mar 28 21:31:36 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* acinclude.m4:
* src/util/Makefile.am: Only mdb-sql depends on readline
* autogen.sh:
* configure.in: Update some autotools macros

### Sun Mar 27 21:32:00 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c: Fix segfault on file-not-found

### Tue Mar 22 21:51:06 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Fix a bug in mdb_find_row

### Tue Mar 22 07:01:37 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/extras/mdb-dump.c:
* src/libmdb/data.c: Clean up some warnings
* src/libmdb/file.c:
* src/libmdb/kkd.c:
* src/libmdb/table.c:
* src/libmdb/write.c: Replace a few mdb_pg_get_int's with mdb_get_int's

### Sat Mar 19 06:34:00 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/Makefile.am:
* src/libmdb/data.c: Clean up printing of floating-point values 

### Wed Mar 16 06:41:57 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/data.c: Improve OLE-related functions
* src/util/mdb-prop.c: Uncomment use of OLE functions
* src/util/mdb-prop.c: Fix build error

### Sun Mar 13 15:22:11 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-export.c:
* src/util/mdb-ver.c: Fix a couple of leaks
* src/libmdb/data.c:
* src/libmdb/sargs.c:
* src/libmdb/write.c:
* src/sql/mdbsql.c: Remove some unused variables

### Sat Mar 12 23:25:48 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/file.c:
* src/libmdb/iconv.c:
* src/libmdb/money.c: Changes for compiling in MSVC (Martin Ellis)

### Fri Mar 11 21:32:19 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* HACKING:
* src/libmdb/data.c:
* src/libmdb/iconv.c: Fix some issues with mdb_memo_to_string

### Sun Mar  6 22:09:09 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c: Fix memory leak
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/write.c:
* src/util/prfreemap.c:
* src/util/prindex.c: Add mdb_find_row function

### Fri Feb 25 23:02:42 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/money.c: Fix bad declaration
* src/libmdb/write.c: Rework of mdb_crack_row

### Thu Feb 24 21:13:02 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c:
* src/libmdb/money.c:
* src/libmdb/props.c:
* src/odbc/odbc.c: Pass malloc'd strings with mdb_col_to_string, et al

### Fri Feb 11 10:41:55 EST 2005	Brian Bruns <brian@bruns.com>
* src/libmdb/index.c: Fix off by one bug in mdb_index_swap_n()
* src/libmdb/write.c: Fix bug in key hash
* src/libmdb/mem.c: Comment out METHOD define(?) which broke compile
* src/util/mdb-import.c: set fixed flag before calling pack_row

### Wed Feb  9 23:37:43 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Date calculation bugfix (David Mansfield)
* src/libmdb/data.c: Deleted rows bugfix (David Mansfield)
* src/libmdb/data.c: Convert memo fields (Artur Frysiak, me)

### Thu Feb  3 21:12:55 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* HACKING: Small documentation fix
* src/gmdb2/debug.c:
* src/gmdb2/gladefiles/gmdb-debug.glade:
* src/gmdb2/gladefiles/gmdb.glade: Lots of gmdb2 updates and fixes

### Mon Jan 10 06:52:43 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/gmdb2/gladefiles/gmdb-debug.glade:
* src/gmdb2/debug.c:
* src/gmdb2/gmdb.h:
* src/gmdb2/table.c: Modify functions to work better with Glade

### Wed Jan  5 07:43:07 CST 2005	Jeff Smith <whydoubt@yahoo.com>
* src/gmdb2/debug.c:
* src/gmdb2/file.c:
* src/gmdb2/form.c:
* src/gmdb2/gmdb.h:
* src/gmdb2/macro.c:
* src/gmdb2/main2.c:
* src/gmdb2/module.c:
* src/gmdb2/prefs.c:
* src/gmdb2/query.c:
* src/gmdb2/report.c:
* src/gmdb2/schema.c:
* src/gmdb2/sql.c:
* src/gmdb2/table.c:
* src/gmdb2/table_data.c:
* src/gmdb2/table_def.c:
* src/gmdb2/table_export.c: Fix various warnings

### Thu Dec 30 19:26:01 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING:
* doc/reference/libmdb/libmdb-sections.txt:
* include/mdbsql.h:
* include/mdbtools.h:
* src/gmdb/table_data.c:
* src/gmdb/table_export.c:
* src/gmdb2/sql.c:
* src/gmdb2/table_data.c:
* src/gmdb2/table_export.c:
* src/libmdb/backend.c:
* src/libmdb/catalog.c:
* src/libmdb/data.c:
* src/libmdb/file.c:
* src/odbc/odbc.c:
* src/sql/mdbsql.c:
* src/util/mdb-array.c:
* src/util/mdb-export.c:
* src/util/mdb-prop.c:
* src/util/prole.c:
* src/util/sargtest.c:
* src/util/updrow.c: Combine functions that bind a column and its length
* src/gmdb/debug.c:
* src/gmdb/table_def.c:
* src/gmdb2/debug.c:
* src/gmdb2/table_def.c: Replace malloc/memset with g_malloc0
* src/gmdb/debug.c:
* src/gmdb/sql.c:
* src/gmdb/table_data.c:
* src/gmdb/table_export.c:
* src/gmdb2/debug.c:
* src/gmdb2/sql.c:
* src/gmdb2/table_data.c:
* src/gmdb2/table_export.c: Replace malloc/free with g_malloc/g_free

### Thu Dec 30 06:36:25 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h: Fix MdbSargTreeFunc's typedef
* src/sql/lexer.l: Fix flex warning about A-z ambiguity

### Tue Dec 28 21:25:24 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Handle dates from 1/1/100 to 12/31/9999

### Sat Dec 11 00:03:17 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING:
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/iconv.c:
* src/libmdb/index.c:
* src/libmdb/sargs.c:
* src/libmdb/table.c:
* src/odbc/odbc.c:
* src/sql/mdbsql.c: Better compressed text handling

### Wed Dec  1 18:18:02 EST 2004	Brian Bruns <brian@bruns.com>
* src/libmdb/data.c: 
* src/libmdb/iconv.c:
* src/libmdb/index.c:
* src/libmdb/sargs.c:
* src/libmdb/table.c: patch from Wind Li for iconv on jet3
* src/libmdb/write.c: write out leaf page with added index entry, not quite working yet (bitmap not written correctly and key hash value wrong) but closer.
* src/util/mdb-import.c: temporary kludge for problems caused by using g_strsplit() and friends


### Wed Dec  1 00:33:38 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c:
* src/libmdb/iconv.c:
* src/util/mdb-sql.c: Clean up some memory leaks

### Sat Nov 27 12:16:08 CST 2004	Jeff Smith <whydoubt@yahoo.com>
* src/odbc/odbc.c: Update ascii2unicode conversion calls

### Fri Nov 26 00:10:58 EST 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools.h:
* src/gmdb2/table_def.c:
* src/gmdb2/gladefiles/gmdb-schema.glade:
* src/libmdb/data.c:
* src/libmdb/file.c:
* src/libmdb/iconv.c:
* src/libmdb/index.c:
* src/libmdb/options.c:
* src/libmdb/sargs.c:
* src/libmdb/table.c:
* src/sql/mdbsql.c: iconv conversion

### Sat Nov 13 20:33:42 EST 2004	Brian Bruns <brian@bruns.com>
* src/gmdb2/gmdb.h: remove redeclaration errors
* src/gmdb2/sql.c: fix compiler warnings
* src/gmdb2/debug.c:
* src/gmdb2/file.c:
* src/gmdb2/schema.c:
* src/gmdb2/sql.c:
* src/gmdb2/table_export.c: patch #1038578 from Filip Van Raemdonck
* src/sql/mdbsql.c:
* include/mdbsql.h: patch #1034566 from Filip Van Raemdonck
* src/odbc/Makefile.am: patch #1030353 from Filip Van Raemdonck

### Wed Oct 27 22:32:33 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-sql.c: Various mdb-sql improvements

### Sun Oct 24 23:07:16 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* configure.in:
* src/gmdb2/Makefile.am:
* src/libmdb/Makefile.am:
* src/util/Makefile.am:
* src/util/mdb-sql.c: Readline usage fixes
* src/sql/Makefile.am:
* src/sql/main.c: Remove obsolete file

### Wed Oct 20 21:49:04 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/sql/mdbsql.c: Get rid of GLib 2.4+ call

### Sat Oct 16 09:19:16 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* INSTALL:
* README:
* configure.in:
* include/mdbodbc.h:
* src/odbc/connectparams.c:
* src/odbc/odbc.c: Get ODBC driver to work for iODBC

### Fri Sep 24 00:07:10 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* doc/install.sgml: Document odbcinst.ini entry

### Thu Sep 23 00:04:05 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/money.c:
* src/libmdb/data.c:
* src/sql/mdbsql.c:
* src/odbc/odbc.c: Correct some field display size problems

### Tue Sep 21 22:03:56 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING: Numerous corrections and readability improvements
* src/odbc/odbc.c: Return SQL_NO_DATA for SQLMoreResults

### Wed Sep 15 22:59:26 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/gmdb/sql.c:
* src/gmdb/table.c:
* src/gmdb2/schema.c:
* src/gmdb2/sql.c:
* src/gmdb2/table.c:
* src/libmdb/catalog.c:
* src/libmdb/table.c:
* src/odbc/odbc.c:
* src/sql/mdbsql.c:
* src/util/mdb-check.c:
* src/util/mdb-header.c:
* src/util/mdb-schema.c:
* src/util/mdb-tables.c:
* HACKING: Use 'Flags' field in MSysObjects to recognize system tables
* TODO: Update TODO to reflect status of multipage work tables

### Wed Sep 15 07:33:34 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/odbc/Makefile.am: Fix a bug in ODBC Makefile

### Mon Sep 13 19:10:24 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/odbc/odbc.c: Fix a bug in SQLConnect

### Sun Sep 12 14:03:10 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/write.c:
* src/libmdb/worktable.c: Temp table improvements
* src/odbc/odbc.c: Implement SQLTables and SQLColumns

### Wed Sep  8 22:24:29 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING: Small format documentation correction
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/table.c:
* src/libmdb/worktable.c:
* src/libmdb/write.c:
* src/odbc/odbc.c:
* src/sql/mdbsql.c:
* src/util/mdb-sql.c: Enable multi-page temp tables

### Wed Sep  8 07:37:08 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/table.c: Add function mdb_find_pg_row

### Thu Sep  2 23:04:02 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* doc/reference/libmdb/libmdb-sections.txt:
* include/mdbtools.h:
* src/libmdb/catalog.c: Remove function mdb_alloc_catalog

### Sat Aug 28 14:21:41 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Fix mdb_read_next_dpg
	                     Correct long int display length
* src/libmdb/data.c:
* src/libmdb/map.c: Fix a bug in reading usage maps

### Sat Aug 28 00:20:44 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/write.c: Jump table packing/cracking improvements
* src/libmdb/worktable.c: Fix bug in temp tables with multiple columns
* src/libmdb/data.c: Minor simplification in mdb_read_row

### Thu Aug 26 21:06:35 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/write.c: Documentation fix
* src/sql/lexer.l: Add SQL quote escaping
* src/libmdb/worktable.c: Fix bug in creating temp tables
* src/libmdb/write.c: mdb_crack_row3 rewrite

### Tue Aug 24 21:04:17 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbsql.h:
* src/sql/mdbsql.c: Tidy up a few SQL-related functions
* src/libmdb/iconv.c: Tighten packing of strings into rows
* src/libmdb/write.c: Fix bug in storing variable-length field offsets

### Sat Aug 21 21:21:56 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c: Clean up a bug in the new mdb_get_single/double
* src/libmdb/data.c: Clean out some stale code
* src/sql/parser.y: Simplify a couple of rules

### Thu Aug 19 21:37:21 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* configure.in:
* src/libmdb/file.c: Use GLib to deal with endian issues

### Thu Aug 19 07:50:56 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c:
* src/libmdb/map.c: Factorizing usage map functions

### Wed Aug 18 23:31:34 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* doc/reference/libmdb/libmdb-sections.txt:
* include/mdbtools.h:
* src/libmdb/file.c:
* src/libmdb/stats.c: Tidy up stats interface

### Tue Aug 17 22:46:13 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c: Fix and simplify usage map handling
* HACKING: Minor documentation corrections

### Wed Aug  4 21:22:46 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING:
* include/mdbtools.h:
* src/libmdb/write.c:
* src/libmdb/table.c: A fix for bug #669739 that became a mdb_crack_row4
		rewrite.  Thanks to Luciano Miguel Wolf and Alexandre Horst for
		the bug analysis and the initial patch.

### Sat Jul 17 23:09:40 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/catalog.c: Clean out some stale code
* src/libmdb/data.c: Use mdb_unicode2ascii in mdb_col_to_string
* src/libmdb/data.c: Clean out some stale code

### Sat Jul 17 09:21:13 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/index.c:
* src/libmdb/write.c:
* src/util/prindex.c: Warnings fixes
* src/libmdb/map.c: Warnings fixes

### Sat Jul 17 02:47:16 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbtools.h:
* src/libmdb/data.c:
* src/libmdb/kkd.c:
* src/libmdb/like.c:
* src/libmdb/table.c:
* src/libmdb/write.c:
* src/util/mdb-import.c: Warnings fixes and better use of GLib

### Fri Jul  9 07:47:27 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* include/mdbsql.h:
* include/mdbtools.h:
* src/extras/mdbsupport.c:
* src/libmdb/catalog.c:
* src/libmdb/data.c:
* src/libmdb/file.c:
* src/libmdb/index.c:
* src/libmdb/sargs.c:
* src/libmdb/table.c:
* src/libmdb/write.c:
* src/sql/mdbsql.c:
* src/util/mdb-array.c:
* src/util/mdb-export.c:
* src/util/mdb-header.c:
* src/util/mdb-import.c:
* src/util/mdb-schema.c:
* src/util/mdb-sql.c:
* src/util/mdb-tables.c:
* src/util/prindex.c:
* src/util/prole.c:
* src/util/prtable.c:
* src/util/updrow.c: Lots more gcc warnings fixes

### Fri Jul  2 23:52:34 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/backend.c:
* src/libmdb/iconv.c:
* src/libmdb/index.c:
* include/mdbtools.h: Fixes based on 'gcc -W -Wall' warnings
* src/libmdb/file.c:
* src/libmdb/write.c:
* include/mdbtools.h: Replace size_t with ssize_t as appropriate

### Fri Jul  2 07:27:32 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/backend.c:
* src/libmdb/table.c:
* src/sql/mdbsql.c:
* src/util/mdb-array.c:
* src/util/mdb-export.c:
* src/util/mdb-import.c:
* src/util/mdb-prop.c:
* src/util/prdata.c:
* src/util/prindex.c:
* src/util/prole.c:
* src/util/sargtest.c:
* src/util/updrow.c:
* include/mdbtools.h: Add function mdb_read_table_by_name

### Wed Jun 23 23:19:43 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c:
* src/util/mdb-array.c:
* src/util/mdb-check.c:
* src/util/mdb-header.c:
* src/util/mdb-import.c:
* src/util/mdb-prop.c:
* src/util/prdata.c:
* src/util/prindex.c:
* src/util/prole.c:
* src/util/sargtest.c:
* src/util/updrow.c: Fix some memory leaks
* include/mdbtools.h: Remove duplicate declaration

### Wed Jun 23 07:30:17 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c:
* src/libmdb/mem.c
* include/mdbtools.h: Move table and column functions to table.c
* src/libmdb/stats.c:
* src/libmdb/mem.c
* include/mdbtools.h: Move statistics functions to stats.c

### Tue Jun 22 22:02:02 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-schema.c: Fix a memory leak
* src/libmdb/mem.c: Fix another memory leak
* src/libmdb/catalog.c: Bind columns by name in mdb_read_catalog
* src/libmdb/worktable.c: Remove only use of mdb_append_column
* src/libmdb/catalog.c:
* src/libmdb/mem.c:
* include/mdbtools.h: Move catalog functions to catalog.c

### Mon Jun 21 23:18:18 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/backend.c:
* src/libmdb/file.c:
* src/libmdb/like.c:
* src/libmdb/money.c: Add gtkdoc to various functions

### Sun Jun 20 09:37:58 EDT 2004	Brian Bruns <brian@bruns.com>
* configure.in: 
* acinclude.m4: use READLINE macro from Ville Laurikari. Remove full macroset to work around broken BSD autoconf.  Add macro for iconv detection.
* src/util/mdb-sql.c: add stubs for read_history/write_history if no readline.  update to use new readline defines.
* HACKING: reverse order of total column count with current column count.
* README: fix typo
* include/mdbtools.h: add iconv handle to MdbHandle
* src/libmdb/file.c: add gtkdoc to mdb_find_file()
* src/libmdb/Makefile.am: 
* src/sql/Makefile.am: add libtool versioning
* src/gmdb2/gladefiles/gmdb-schema.glade:
* src/gmdb2/schema.c: Add MySQL to export
* src/gmdb2/help/C/gmdb.xml: fix typo

### Fri Jun 18 00:08:24 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* HACKING:
* src/libmdb/index.c:
* src/libmdb/mem.c:
* include/mdbtools.h: Reconcile code/documentation inconsistencies
* src/util/mdb-schema.c: Fix a bug and a typo in mdb-schema
* src/libmdb/index.c: Replace a function with an equivalent GLib macro

### Thu Jun 17 20:56:44 EDT 2004	Brian Bruns <brian@bruns.com>
* configure.in: temporarily remove building of reference manual. It broke 'make dist'

### Wed Jun 16 17:35:07 EDT 2004	Brian Bruns <brian@bruns.com>
* src/gmdb2/file.c: initialize default backend
* src/gmdb2/table_def.c: replace reference to mdb_access_types structure with call to mdb_get_coltype_string()
* include/mdbtools.h: increase max objects to 256 bytes.

### Mon Jun 14 22:52:00 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c: Fix bug in column name ordering

### Mon Jun 14 07:12:37 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c: Make better use of read_pg_if_n

### Fri Jun 11 16:56:06 CDT 200	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/table.c: Fix bug in read_pg_if_n

### Fri Jun 11 08:52:14 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c:
* src/libmdb/backend.c:
* src/gmdb2/schema.c:
* src/util/mdb-schema.c:
* include/mdbtools.h: Major revisions to 'backend' code

### Wed Jun  2 07:31:04 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c: Improve mdb_open's error handling

### Mon May 31 12:19:05 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c: Make better use of glib functions

### Sun May 30 00:04:55 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/data.c:
* src/libmdb/file.c:
* src/libmdb/mem.c:
* src/libmdb/table.c: malloc to g_malloc
* src/sql/main.c:
* src/sql/mdbsql.c: better utilize glib functions, fix memory leak
* src/util/mdb-array.c:
* src/util/mdb-check.c:
* src/util/mdb-export.c:
* src/util/mdb-import.c:
* src/util/mdb-schema.c:
* src/util/mdb-sql.c:
* src/util/mdb-tables.c:
* src/util/sargtest.c: better utilize glib functions, fix memory leaks
* src/odbc/connectparams.c:
* src/odbc/odbc.c: better utilize glib functions, fix memory leak

### Sat May 29 14:14:21 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/backend.c:
* src/libmdb/file.c: malloc to g_malloc for backend functions

### Fri May 28 06:55:55 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/mem.c: Fixed a couple of potential memory leaks
* include/mdbtools.h: Fixed a couple of compiler warnings

### Sun May  2 06:31:17 EDT 2004	Brian Bruns <brian@bruns.com>
* src/util/mdb-tables.c: Add -t flag to specify object type
* src/util/mdb-props.c: Handle any object type, not just tables

### Sat May  1 00:02:09 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* doc/reference/libmdb/libmdb-sections.txt:
* include/mdbtools.h:
* src/libmdb/file.c:
* src/libmdb/mem.c:
* src/libmdb/stats.c: Fold several functions into mdb_open/mdb_close
* doc/reference/libmdb/.cvsignore: Added this file

2004-04-29  Michael Meeks  <michael@ximian.com>
* configure.in
* Makefile.am: add mdbtools pkgconfig bits
* libmdb.pc.in
* libmdbsql.pc.in: add mdbtools pkgconfig templates.


### Sat Apr 24 21:39:10 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c:
* src/libmdb/mem.c: Moving some NULL pointer tests
* src/libmdb/mem.c
* src/libmdb/props.c:
* src/sql/mdbsql.c: Back out some ineffective NULL setting

### Sat Apr 24 15:27:51 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/file.c:
* src/libmdb/props.c
* src/sql/mdbsql.c: Setting pointers to NULL after freeing

### Sat Apr 24 00:02:14 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/libmdb/mem.c:
* src/libmdb/catalog.c: Setting various pointers to NULL after freeing.
* src/libmdb/mem.c:
* src/libmdb/file.c: Cleaning up memory for catalogs

### Fri Apr 16 10:48:05 EDT 2004	Brian Bruns <brian@bruns.com>
* src/libmdb/write.c: restructuring of mdb_crack_row?() to accomodate 
	columns deletes/adds
* src/libmdb/index.c: fix stupid bug in mdb_swap_n()

### Tue Apr 13 19:08:51 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/util/mdb-check.c: Make mdb-check compilable
* configure.in:
* src/odbc/Makefile.am: Improve configure for ODBC
* acinclude.m4: Update to the latest libtool.m4
* src/libmdb/file.c: Make mdb_close free the handle
* src/sql/mdbsql.c:
* src/util/mdb-array.c:
* src/util/mdb-check.c:
* src/util/mdb-export.c:
* src/util/mdb-header.c:
* src/util/mdb-import.c:
* src/util/mdb-prop.c:
* src/util/mdb-schema.c:
* src/util/mdb-tables.c:
* src/util/mdb-ver.c:
* src/util/prcat.c:
* src/util/prdata.c:
* src/util/prdump.c:
* src/util/prfreemap.c:
* src/util/prindex.c:
* src/util/prkkd.c:
* src/util/prole.c:
* src/util/prtable.c:
* src/util/sargtest.c:
* src/util/updrow.c: Use mdb_close to match mdb_open instead of
	                     mdb_free_handle

### Tue Apr 13 15:25:26 EDT 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools.h:
* src/sql/mdbsql.c:
* src/util/mdb-array.c:
* src/util/mdb-check.c:
* src/util/mdb-export.c:
* src/util/mdb-header.c:
* src/util/mdb-import.c:
* src/util/mdb-prop.c:
* src/util/mdb-schema.c:
* src/util/mdb-tables.c:
* src/util/mdb-ver.c:
* src/util/prcat.c:
* src/util/prdata.c:
* src/util/prdump.c:
* src/util/prfreemap.c:
* src/util/prindex.c:
* src/util/prkkd.c:
* src/util/prole.c:
* src/util/prtable.c:
* src/util/sargtest.c:
* src/util/updrow.c:
* src/gmdb/file.c:
* src/gmdb2/file.c:
* src/libmdb/file.c: Add flags argument to mdb_open to support read/write 
	files
* doc/reference/libmdb/libmdb-sections.txt: Organize reference manual a little better

### Mon Apr 12 21:58:00 CDT 2004	Jeff Smith <whydoubt@yahoo.com>
* src/odbc/connectparams.c: ODBC driver dialog enhancements
* src/sql/mdbsql.c: Correct some array sizes
* src/odb/odbc.c: Utilize _odbc_get_string_size() in SQLPrepare()
* src/libmdb/mem.c: Make mdb_free_tabledef safe from dereferencing NULL

### Mon Apr 12 09:56:23 EDT 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools:
* src/libmdb/mem.c:
* src/libmdb/backend.c: free backends on exit (Jeff Smith)
* src/libmdb/index.c: missing function mdb_swap_n()
* src/libmdb/file.c: 
* src/libmdb/mem.c: 
* src/libmdb/stats.c: 
* configure.in:
* doc/reference/libmdb/Makefile.am:
* doc/reference/libmdb/libmdb-sections.txt:
* doc/reference/libmdb/libmdb-docs.sgml: Initial cut at gtk-doc reference manual
* include/mdbtools.h: Change MdbSargNode typedef to forward declaration to make gtk-doc happy
* doc/faq.html: Fix unclosed <ul> tag
* TODO: update finished items

### Thu Mar 25 04:56:05 EST 2004	Brian Bruns <brian@bruns.com>
* src/odbc/odbc.c(_SQLFreeStmt): call mdb_sql_reset on stmt drop (Jeff Smith)

### Sat Mar 13 09:27:23 EST 2004	Brian Bruns <brian@bruns.com>
* doc/faq.html: fix typos, add question on write support
* doc/install.sgml: clarify yacc requirement
* doc/mdb-ver.txt: add -M to options
* doc/mdb-sql.txt: add BUGS sections
* src/libmdb/data.c: fix bug in call to mdb_get_double (Jeff Smith)
* src/libmdb/write.c: move declaration to top of function in crack_row3 (Jeff Smith), check for null in mdb_pack_row[3-4] (me)
* src/libmdb/index.c: fix hard coded index size in compressed index handling
* src/sql/lexer.l: missing ] in NUMBER (Jeff Smith)
* src/sql/mdbsql.c: temp_fill called with wrong value (Jeff Smith)
* src/odbc/odbc.c: fix typo, incorrect pointer dereference (Jeff Smith), change value to SQLSMALLINT * in type_info 

### Sat Mar  6 18:10:20 EST 2004	Brian Bruns <brian@bruns.com>
* include/mdbsql.h:
* src/libmdb/worktable.c:
* src/sql/mdbsql.c: introduced convience functions for building temp tables
* src/libmdb/write.c: remove dead statement
* src/libmdb/iconv.c: check for null string in mdb_ascii2unicode
* src/odbc/odbc.c: implement SQLGetTypeInfo bug #903498

### Fri Mar  5 23:24:04 EST 2004	Brian Bruns <brian@bruns.com>
* configure.in: AC_SUBST on ODBCINSTLIB
* include/mdbtools.h: 
* src/libmdb/Makefile.am: 
* src/odbc/Makefile.am: 
* src/libmdb/data.c: 
* src/libmdb/iconv.c: move ascii/unicode convert code to iconv.c
* include/mdbsql.h: 
* src/util/mdb-sql.c: 
* src/odbc/odbc.c: 
* src/sql/mdbsql.c: new fetch routine to handle worktables
* src/odbc/connectparams.c: use odbcinst lib routines if available

### Thu Mar  4 23:24:27 EST 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools.h: add prototype for mdb_index_find_next()
* src/libmdb/write.c: add mdb_pack_row4() (Jeff Smith).  Fix null mask order (Jeff, me)
* src/sql/mdbsql.c: convert list tables/describe table to ucs2 for jet4 db's

### Thu Mar  4 15:30:21 EST 2004	Brian Bruns <brian@bruns.com>
* src/odbc/Makefile.am: add newer files to driver
* src/libmdb/options.c: add debug_row option
* src/libmdb/data.c: loop for num_cols (current columns definition) not num_fields (columns on row)
* src/libmdb/write.c: read deleted fixed columns correctly under jet4
* include/mdbtools.h:
* src/libmdb/file.c:
* src/libmdb/table.c: store fixed and variable offsets and postions from tdef in column structure.
* include/mdbodbc.h:
* src/odbc/connectparams.c: Add ODBCINSTGetProperties function for setup lib.
* configure.in: Add detection of SQLGetPrivateProfileString
* README: clarify LGPL covered files
* INSTALL: clarify yacc/bison 

### Sun Feb 15 07:37:19 EST 2004	Brian Bruns	<brian@bruns.com>
* HACKING: better description of Jet4 column deletion/addition
* src/gmdb2/gladefiles/gmdb-debug.glade: 
	remove incorrect default callback
* src/gmdb2/debug.c: 
	move declarations to top of function, fixes bug 675022
	fix -Wall messages
	add data page dissector for jet4
* src/libmdb/data.c: merge patch for bug #688655, check negative values on datetime
* src/libmdb/money.c: increase MAXPRECISION to 20
* src/libmdb/options.c: new file
* src/libmdb/table.c: 
* src/libmdb/data.c: 
* src/libmdb/write.c: 
* src/libmdb/like.c: 
* src/libmdb/index.c: convert to use mdb_get_option/mdb_debug

### Sat Feb 14 14:41:00 EST 2004	Brian Bruns <brian@bruns.com>
* include/.cvsignore: add mdbver.h
* include/mdbtools: remove variables for old index algorithm.
* src/libmdb/index.c: missing return in mdb_index_find_next, remove old index algorithm.  Add mdb_index_pack_bitmap() function and rename unpack routine to match.
* src/libmdb/write.c: port fix from data.c to mdb_crack_row() routines
* src/gmdb2/debug.c: more tdef4 dissector work
* HACKING: column deletion revelation/thoughts.

### Fri Feb 13 12:51:50 EST 2004	Brian Bruns <brian@bruns.com>
* src/extras/.cvsignore: change mdb-dump to mdb-hexdump
* include/Makefile.am: 
* include/mdbver.h.in: new file
* configure.in: add mdbver.h to AC_OUTPUT
* src/util/mdb-ver.c: add -M flag to show MDB Tools version to help support
* src/gmdb2/main2.c: change version number to mdbtools version number
* src/gmdb2/sql.c: added some (commented) code to change cursor on execute.
* src/gmdb2/table.c: right mouse click selects before calling popup.
* src/gmdb2/debug.c: add separate dissector for jet4 tdef pages
* src/gmdb2/gladefiles/gmdb2-prefs.glade: add help button
* src/libmdb/index.c: pre-compute index page bitmap in mdb_index_unpack_page() in preparation for index writes.
* include/mdbtools.h: change IndexPage structure for new algorithm

### Wed Feb 11 15:30:42 EST 2004 	Brian Bruns <brian@bruns.com>
* HACKING: rewritten to better reflect Jet4
* src/gmdb2/gmdb2.h: add prototype for gmdb_debug_set_dissect_cb()
* src/gmdb2/debug.c: add switch to control dissecting pages or no
* src/gmdb2/gladefiles/gmdb-debug.glade: add dissect option to View menu
* src/libmdb/data.c: adding debugging code
* src/libmdb/table.c: adding debugging code for usage maps
* src/libmdb/write.c: remove jet3 check from mdb_crack_row4()
* include/mdbtools.h: 
* src/libmdb/index.c: handle compressed indexes, trailing leaves

### Mon Feb  9 14:53:19 EST 2004	Brian Bruns <brian@bruns.com>
* src/util/mdb-export.c: reorganized a bit, added header text and options from patch #857342
* src/util/mdb-export.c: added -I option from patch #857342
* src/gmdb2/gladefiles/gmdb-schema.glade: fix close button
* src/sql/lexer.l: allow negative numbers

### Sun Feb  8 13:02:56 EST 2004	Brian Bruns <brian@bruns.com>
* doc/faq.html: update email addy
* doc/userguide.sgml: fix typo
* src/libmdb/backend.c: mysql patch
* src/odbc/odbc.c:
* src/util/mdb-sql.c:
* src/gmdb2/sql.c: change mdbsql_bind_col to mdb_sql_bind_col to match other functions
* include/mdbtools.h: move mdb_backends to .c file
* src/sql/lexer.l: fix STRING token from overreading
* include/mdbsql.h: 
* src/sql/parser.y: 
* src/sql/mdbsql.c: added mdb_sql_eval_expr() to support 0=1 literal comparison
* src/libmdb/sargs.c: check for null node->col (literal comparison)
* src/sql/Makefile.am: change hardcoded bison reference to @YACC@

### Fri Feb  6 18:08:59 EST 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools.h:
* src/sql/mdbsql.c: 
* src/libmdb/sargs.c: change signature of mdb_test_sarg to test for nulls
* src/mdbsql/lexer.l: add NULL token
* src/libmdb/data.c: memo patch from <teodor@sigaev.ru>
* src/libmdb/file.c: patch #889589
* src/libmdb/write.c: patch #889586

### Thu Feb 5 20:45:00 EST 2004		Brian Bruns <brian@bruns.com>
* HACKING: added information on indexes
* src/sql/lexer.l:
* src/sql/parser.y: added is null/is not null, not working yet
* src/util/mdb-sql.c: fix readline support, added history file
* src/util/mdb-export.c: update usage for -D flag
* src/libmdb/backend.c: added mysql struct (not complete)
* src/libmdb/sargs.c: fix casts
* src/libmdb/write.c: break apart mdb_crack_row new index func

### Sat Jan 10 17:18:00 EST 2004	Brian Bruns <brian@bruns.com>
* src/util/mdb-parse.c: fixed char comparison to -1 re: bug 688181

### Fri Jan 9 15:22:11 EST 2004	Brian Bruns <brian@bruns.com>
* include/mdbtools.h:
* src/libmdb/index.c:
* src/libmdb/write.c: modularize this a bit more to allow reuse
* src/libmdb/worktable.c: preliminary worktable/temp table support
* src/libmdb/table.c: fix reading of free page map and enable
* src/data/data.c: use mdb_crack_row() from write.c for cleaner row
	handling.  Fix delflag bug.
* src/util/updrow.c: fix sarg handling
* src/util/mdb-import.c: check for valid table
* src/sql/mdbsql.c: 
* src/util/mdb-sql.c: Fix H and F flags.  Change "list tables" and 
	"describe table" to write to worktable so client can pull results (almost)
	like a normal query.

### Wed Jan 22 14:54:11 EST 2003	Brian Bruns <camber@ais.org>
* src/util/mdb-sql.c: typo fix
* src/gmdb2/gladefiles/gmdb-debug.glade:
* src/gmdb2/gladefiles/gmdb-sql.glade:
* src/gmdb2/gladefiles/gmdb.glade:
	toolbar separator fix (glade/libglade buglet)

### Tue Jan 21 18:10:46 EST 2003	Brian Bruns <camber@ais.org>
* src/libmdb/data.c: 
	move unicode to ascii code to mdb_unicode2ascii function
* src/libmdb/sarg.c: 
	add MdbHandle argument to mdb_sarg_test and invoke mdb_unicode2ascii
* src/libmdb/like.c: added debugging info
* include/mdbtools.h: prototypes
* src/sql/mdbsql.c: fix case compare bug in where clause

### Tue Apr  2 21:02:13 EST 2002	Brian Bruns <camber@ais.org>
* src/libmdb/data.c: ignore 0xff in row offset table (Don Badrak)

### Wed Mar 20 22:49:33 EST 2002	Brian Bruns	<camber@ais.org>
* include/mdbtools.h: increased page size from 2048 to 4096

### Sat Mar 16 21:37:01 EST 2002	Brian Bruns	<camber@ais.org>
* include/mdbtools.h: added oam usage map fields to TableDef
* src/extras/mdb-dump.c: added JET4 support
* src/libmdb/data.c: added code to check for unicode compression
* src/libmdb/mem.c(mdb_free_tabledef): clean up for oam fields

### 2002-03-15  Brian Bruns <camber@ais.org>
* src/libmdb/money.c: Two's complement fix from 
* src/libmdb/data.c: BOOL fixes from Mike Finger and Ben McKeegan
* src/libmdb/table.c: BOOL fixes from Mike Finger

### 2001-09-29  Brian Bruns <camber@ais.org>
* src/odbc/odbc.c:
    Added implementation of SQLNumResultCols()
* src/sql/lexer.l:
    Added yywrap function, so ODBC driver may be linked without libfl
* src/util/mdb-sql.c
      src/sql/parser.y
      src/odbc/odbc.c:
    Added mdb_sql_set() function so mdb-sql and ODBC driver do not need to 
    set g_sql directly.

### 2001-09-28  Brian Bruns <camber@ais.org>
* src/odbc/unittest.c:
    Changed dwNativeError vars to SQLINTEGER to fix compile warning
* src/util/mdb-sql.c
      src/sql/mdbsql.c:
    Check for cur_table before calling mdb_dump_results()
    Make mdb_sql_reset() dealloc and clear cur_table


