select try.continent, floor(avg(c.population))  from city c inner join country try where c.countrycode=try.code group by try.continent;