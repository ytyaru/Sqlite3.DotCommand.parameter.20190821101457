SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

WHILE_NAME=`zenity --entry --text="\`printf "ユーザ名入力"\`"`
WHILE_AGE=20
sqlite3 :memory: \
".param set @target_name ${WHILE_NAME}" \
".param set @target_age ${WHILE_AGE}" \
"create table users(id integer primary key, name text, age int, class text);" \
"insert into users(name,age,class) values('Yamada', 12, 'A');" \
"insert into users(name,age,class) values('Yamada', 21, 'C');" \
"insert into users(name,age,class) values('Suzuki', 18, 'B');" \
"insert into users(name,age,class) values('Tanaka', 19, 'A');" \
"select * from users where name = @target_name and age <= @target_age;"

