#! /bin/sh
source ./mysql_conf.sh
TABLENAME=Tbl_Doc_
create_table_sql="create table IF NOT EXISTS ${TABLENAME} 
(
Uid VARCHAR(64) NOT NULL,
City VARCHAR(64),
AvatarUrl VARCHAR(255),
CreatedTime INT,
LastModifyTime INT,
primary key(UId)
) engine=MyISAM default charset=utf8;"
echo $create_table_sql
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} ${DBNAME} -e"${create_table_sql}"
