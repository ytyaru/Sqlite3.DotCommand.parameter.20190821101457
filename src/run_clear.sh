SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# なんか削除されないんですけど……。

sqlite3 :memory: \
".param set K1 V1" \
".param list" \
".param clear" \
".param list"

sqlite3 :memory: \
".param set K1 V1" \
".param list" \
"select * from sqlite_parameters;" \
".param clear" \
".param list" \
"select * from sqlite_parameters;"

