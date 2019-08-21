SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".param set @target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = @target_name ;"

# 数値もOK
sqlite3 :memory: \
".param set @target_name Yamada" \
".param set @target_age 20" \
"create table users(id integer primary key, name text, age int, class text);" \
"insert into users(name,age,class) values('Yamada', 12, 'A');" \
"insert into users(name,age,class) values('Yamada', 21, 'C');" \
"insert into users(name,age,class) values('Suzuki', 18, 'B');" \
"insert into users(name,age,class) values('Tanaka', 19, 'A');" \
"select * from users where age <= @target_age;"

# 複数もOK
sqlite3 :memory: \
".param set @target_name Yamada" \
".param set @target_age 20" \
"create table users(id integer primary key, name text, age int, class text);" \
"insert into users(name,age,class) values('Yamada', 12, 'A');" \
"insert into users(name,age,class) values('Yamada', 21, 'C');" \
"insert into users(name,age,class) values('Suzuki', 18, 'B');" \
"insert into users(name,age,class) values('Tanaka', 19, 'A');" \
"select * from users where name = @target_name and age <= @target_age;"

