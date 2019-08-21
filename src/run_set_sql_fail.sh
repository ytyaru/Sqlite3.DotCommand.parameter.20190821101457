SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=:target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=@target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=$target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?$target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?:target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?@target_name;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name='?$target_name';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?'$target_name';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?$'target_name';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?'target_name';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=$'target_name';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name='?';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
".parameter list" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name=?;"

# パラメータを使わなければ当然成功する
sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name='Yamada';"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = target_name ;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = ? ;"

sqlite3 :memory: \
".parameter set target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = ?1 ;"

sqlite3 :memory: \
".param set 1 Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = ?1 ;"

# やっとできた！　SQL文側だけでなくkey側にも必要なのかよ……。
sqlite3 :memory: \
".param set @target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = @target_name ;"

sqlite3 :memory: \
".param set ?target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = ?target_name ;"

sqlite3 :memory: \
".param set ?target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = ?1 ;"

sqlite3 :memory: \
".param set :target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = :1 ;"

# できた。`:`でもいける。
sqlite3 :memory: \
".param set :target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = :target_name ;"

# でも`$`ではできない。
sqlite3 :memory: \
".param set $target_name Yamada" \
"create table users(id integer primary key, name text, class text);" \
"insert into users(name,class) values('Yamada', 'A');" \
"insert into users(name,class) values('Suzuki', 'B');" \
"insert into users(name,class) values('Tanaka', 'A');" \
"select * from users where name = $target_name ;"

