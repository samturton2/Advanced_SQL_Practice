# Advanced SQL Practice
- This repo consists of Queries of various Excercises FROM [wise owl](wiseowl.co.uk)

# Setting up the database
- An SQL server was set up as a docker container and ran using the command
```bash
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest
```
- The server was connected to in Azure data studio and the WorldEvents DB was created

