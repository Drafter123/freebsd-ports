define(`confEBINDIR',`%%PREFIX%%/libexec')
define(`confMANROOT',`%%PREFIX%%/man/man')
define(`confMANROOTMAN',`%%PREFIX%%/man/man')
define(`confUBINDIR',`%%PREFIX%%/libexec')
define(`confLIBDIR',`%%PREFIX%%/lib')
define(`confDONT_INSTALL_CATMAN',`True')
%%STATIC%%APPENDDEF(`confLIBS', `-static ')
%%BDB%%APPENDDEF(`confLIBDIRS', `-L%%BDB_LIB_DIR%% ')
%%BDB%%APPENDDEF(`confINCDIRS', `-I%%BDB_INCLUDE_DIR%% ')
%%BDB%%APPENDDEF(`confLIBS', `-l%%BDB_LIB_NAME%% ')
%%OPENSSL%%APPENDDEF(`confLIBDIRS', `-L%%OPENSSLLIB%% -R%%OPENSSLLIB%% ')
%%OPENSSL%%APPENDDEF(`confINCDIRS', `-I%%OPENSSLINC%% ')
%%LIBTRE%%APPENDDEF(`confINCDIRS', `-I/usr/local/include/tre ')
%%LIBTRE%%APPENDDEF(`confLIBDIRS', `-L/usr/local/lib ')
%%LIBTRE%%APPENDDEF(`confLIBS', `-ltre ')
