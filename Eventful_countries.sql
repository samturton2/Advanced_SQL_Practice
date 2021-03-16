Use WorldEvents
GO

select top 10 * from tblCategory;
select * from tblContinent;
select top 10 * from tblCountry;
select top 10 * from tblEvent;

--- Write a query which lists out countries which have more than 8 events, using a correlated subquery rather than HAVING. 

SELECT cou.CountryName FROM tblCountry cou
WHERE 8 <   (SELECT Count(ev.EventID) 
            FROM tblEvent ev
            WHERE ev.CountryID = cou.CountryID)
ORDER BY cou.CountryName ASC;


--- Answer using the Having statement
select distinct count(ev.EventName) as No_of_event, cou.CountryName from tblEvent ev
inner join tblCountry cou on ev.CountryID = cou.CountryID
group by cou.CountryName
having count(ev.EventName) >8;