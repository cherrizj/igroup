#! /bin/sh
source ./mysql_conf.sh
TABLENAME=Tbl_DocVersion_
#AutoSaveFlag 0:auto 1:not
create_table_sql="create table IF NOT EXISTS ${TABLENAME} 
(
DocId VARCHAR(64) NOT NULL,
Version INT NOT NULL AUTO_INCREMENT,
Uid VARCHAR(64) NOT NULL,
Content TEXT,
AutoSaveFlag INT DEFAULT 0,
CreatedTime INT,
LastModifyTime INT,
primary key(DocId,Version)
) engine=MyISAM default charset=utf8;"
echo $create_table_sql
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} ${DBNAME} -e"${create_table_sql}"
