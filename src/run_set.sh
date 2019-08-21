SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".parameter set my_name Yamada" \
".tables" \
"select sql from sqlite_master;" \
".headers on" \
"select * from sqlite_parameters;"

