--- Create a table variable to store a list of "odd" countries, then join this to the events table
--- to see events that occurred in those odd countries.
--- The Criteria is as follows:
--- - Don't show events whose names contain the country they occurred in.
--- - Only show events where the event name and the OddName end in the same letter.

WITH OddCountries AS (
    SELECT CountryName AS OddName, CountryID AS OddID
    FROM tblCountry
    WHERE CountryID %2 = 1
)
SELECT ev.EventName, o.OddName
FROM tblEvent ev
RIGHT JOIN OddCountries o ON o.OddID = ev.CountryID
WHERE ev.EventName NOT LIKE '%'+ o.OddName + '%'
AND RIGHT(ev.EventName, 1) = RIGHT(o.OddName, 1);