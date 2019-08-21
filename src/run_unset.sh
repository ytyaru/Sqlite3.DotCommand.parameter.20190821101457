SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".param set K1 V1" \
".param list" \
".param unset K1" \
".param list"

