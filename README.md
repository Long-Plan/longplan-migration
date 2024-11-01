# Longplan Database migration

### Setup step
You need to setup `.env.dev` base on `.env.schema`

### Running code
There are many way to run the project base on purpose (required Makefile to run)
```
make dbcreate      --- migrate first time database
	
make dbup          --- run database

make dbdown        --- stop database
	
make dbupgrade     --- upgrade database for 1 version (base on 00000X_longplan.up.sql)
	
make dbdowngrade   --- downgrade database for 1 version (base on 00000X_longplan.up.sql)
```
