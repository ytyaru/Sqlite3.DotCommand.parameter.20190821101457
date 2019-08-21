SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: ".param"
sqlite3 :memory: ".param init"
sqlite3 :memory: ".param clear"
sqlite3 :memory: ".param set key value" ".param list"
sqlite3 :memory: ".param set key value" ".param list" ".param clear" ".param list"
sqlite3 :memory: ".param set key value" ".param list" ".param unset key" ".param list"

