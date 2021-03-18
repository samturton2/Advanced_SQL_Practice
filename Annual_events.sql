--- The aim of this exercise is to create a table-valued function 
--- to show events for any given year.

DROP FUNCTION [dbo].[fnEventsForYear]
GO

CREATE FUNCTION dbo.fnEventsForYear(
    @YearOfEvent INT
)
RETURNS TABLE
AS
    RETURN
        SELECT ev.EventName, ev.EventDetails, ev.CategoryID, ev.CountryID
        FROM tblEvent ev
        WHERE YEAR(ev.EventDate) = @YearOfEvent
GO

SELECT * FROM dbo.fnEventsForYear(1918) AS e
GO

--- Create another query which joins to the results of your table-valued 
--- function to show the category and country for each event in a given year:

SELECT efy.EventName, ca.CategoryName, co.CountryName
FROM dbo.fnEventsForYear(1918) efy
LEFT JOIN tblCategory ca ON ca.CategoryID = efy.CategoryID
LEFT JOIN tblCountry co ON co.CountryID = efy.CountryID
GO
