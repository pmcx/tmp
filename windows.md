# msys2

For anyone using msys2 and having the same error:
Change the the line in the file /etc/nsswitch.conf to:
db_home: windows cygwin desc
