#! /bin/sh
source ./mysql_conf.sh
# Cmd = 1:create 2:update 3:delete 4:collect
TABLENAME=Tbl_Doc_
create_table_sql="create table IF NOT EXISTS ${TABLENAME} 
(
Uid VARCHAR(64) NOT NULL,
DocId VARCHAR(64) NOT NULL,
Cmd INT
LastModifyTime INT
primary key(Uid,DocId)
) engine=MyISAM default charset=utf8;"
echo $create_table_sql
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} ${DBNAME} -e"${create_table_sql}"
