SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# 何の役に立つの？
# `.param set`前に`sqlite_parameters`テーブルへアクセスすると未存在だと怒られる。
sqlite3 :memory: \
"select * from sqlite_parameters;"
# だが、`.param init`しておけば空テーブルが作成されるので怒られない。
sqlite3 :memory: \
".param init" \
"select * from sqlite_parameters;"

# `.param init`で全件削除できるかも？　と思ったが、削除されず。
sqlite3 :memory: \
".param set K1 V1" \
".param init" \
".param list"
```
