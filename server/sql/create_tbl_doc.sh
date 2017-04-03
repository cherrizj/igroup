#! /bin/sh
source ./mysql_conf.sh
TABLENAME=Tbl_Doc_
create_table_sql="create table IF NOT EXISTS ${TABLENAME} 
(
DocId VARCHAR(64) NOT NULL,
Uid VARCHAR(64) NOT NULL,
Content TEXT,
CreatedTime INT,
LastModifyTime INT,
primary key(DocId)
) engine=MyISAM default charset=utf8;"
echo $create_table_sql
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} ${DBNAME} -e"${create_table_sql}"
