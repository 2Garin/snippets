## Дамп всех баз MySQL

```mysql
GRANT LOCK TABLES, SELECT, EVENT ON *.* TO 'BACKUPUSER'@'localhost' IDENTIFIED BY 'PASSWORD';
FLUSH PRIVILEGES;
```

[3.1.2 Grant MySQL Privileges to Backup Administrator](http://dev.mysql.com/doc/mysql-enterprise-backup/3.9/en/mysqlbackup.privileges.html)

[Про GRANT EVENT](http://www.tommyblue.it/2014/04/03/how-to-avoid-mysqldump-events-warning/)

```shell
mysqldump -uBACKUPUSER -pPASSWORD --all-databases --events | gzip -9 > `date +/path/to/all_bases_backup_\%Y\%m\%d_\%H\%M\%S.sql.gz`
```


**Извлечение одной базы из полного бэкапа (mysqldump с опцией --all-databases):**

Можно вытаскивать нужную базу В ФАЙЛ:

```shell
sed -n '/^-- Current Database: `dbname`/,/^-- Current Database: `/p' alldatabases.sql > output.sql
```

Либо не вытаскивая залить прямо В БАЗУ:

```shell
mysql -u root -p --one-database db_to_restore < alldatabases.sql
```
