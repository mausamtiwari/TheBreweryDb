USE TheBreweryDB;

/* 3. Toon alle records van het Beers tabel met de volgende criteria.
      Moest eerst met de tabel categories samengevoegd worden (gebruik hiervoor inner join).
      A. Samengevoegde tabel heeft de volgende info:
        - uniek identifier van de bier,
        - de naam van de bier als BierName,
        - brewer id,
        - de naam van de Category ,
        - prijs,
        - stock,
        - alcohol,
        - versie,
        - image
      B.  Moet in de categories van 'Alcoholvrij' OF 'Light' zijn.
      C.  Alle records moet op hun namen 'J' bevatten **_OF_** moet de eerste twee karakters 'St' starten.
      D.  En alcohol procentage moet minder of gelijk aan 2% zijn.
*/

SELECT Beers.Id,
       Beers.Name AS BierName,
       Beers.BrewerId,
       Categories.Category,
       Beers.Price,
       Beers.Stock,
       Beers.Alcohol,
       Beers.Version,
       Beers.Image

FROM Beers
         INNER JOIN Categories on Categories.Id = Beers.CategoryId
WHERE (Categories.Category = 'Alcoholvrij'
    OR Categories.Category = 'Light')
  AND (Beers.Name LIKE '%J%'
    OR Beers.Name LIKE 'St%')
  AND (Beers.Alcohol <= 2);


/* 4. Toon alle records van het Beers tabel met de volgende criteria**

A. Voeg alle drie tabelen samen. (gebruik hiervoor left join, brewerId mag NULL zijn)
B. Haal niet alle kolommen op! Je moet de volgende kolommen opvragen:
    a. Uniek sleutel (primary key) van de bier (hernoemd als BierID)
    b. Naam van de bier (hernoemd als BierName)
    c. Naam van de brewer (hernoemd als BrewerName)
    d. Naam van de category (hernoemd als CategoryName)
    e. Prijs van de bier (hernoemd als BierPrice)
    f. Filter alle bieren van de brewery 'Boon
*/


select Beers.Id     AS BierID,
       Beers.Name   AS BierName,
       Brewers.Name AS Brewery,
       Category     as CategoryName,
       Price        AS BierPrice
from Beers
         INNER JOIN Brewers on Brewers.Id = Beers.BrewerId
         INNER JOIN Categories on Categories.Id = Beers.CategoryId
WHERE Brewers.Name LIKE 'BOON'
;
