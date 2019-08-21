SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# 全件削除できないか試したが無理だった

sqlite3 :memory: \
".param set K1 V1" \
".param list" \
".param unset" \
".param list"

sqlite3 :memory: \
".param set K1 V1" \
".param list" \
".param unset *" \
".param list"

