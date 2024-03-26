USE TheBreweryDB;


# 2. Zoek twee logica fouten in de code en vind een oplossing. De doel van deze statement is om 3 tabelen samen te voegen.

select b.Id,
       b.Name     as Beer,
       r.Name     as Brewery,
       c.Category as Category,
       b.Price,
       b.Stock,
       b.Alcohol,
       b.Version,
       b.Image
from Beers b
         INNER JOIN Brewers r on r.Id = b.BrewerId
         INNER JOIN Categories c on c.Id = b.CategoryId

ORDER BY c.Id;
