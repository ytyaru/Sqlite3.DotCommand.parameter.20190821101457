SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

./run_abbr.sh
./run_set.sh
./run_set_sql.sh
./run_clear.sh
./run_init.sh
./run_unset.sh
./run_unset_fail.sh
./run_set_sql_fail.sh

