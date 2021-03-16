# Advanced SQL Practice
- This repo consists of Queries of various Excercises FROM [wise owl](https://www.wiseowl.co.uk/sql/exercises/standard/)

## Setting up the database
- An SQL server was set up as a docker container and ran using the command
```bash
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest
```
- The server was connected to in Azure data studio and the WorldEvents DB was created
	- This was done using the [Generate_world_events_database.sql file](https://github.com/samturton2/Advanced_SQL_Practice/blob/main/Generate_world_events_database.sql)

## The Tables
```sql
select top 10 * from tblCategory;
```
1	Politics
2	Alien life
3	Exploration
4	Natural world
5	Death and disaster
6	War and conflict
7	Sports
8	Economy
9	Entertainment and culture
10	Health and medicine
