-- Highest death percentage per country 
SELECT 
    location, population, MAX(total_deaths) AS 'deaths count',
    MAX(total_deaths/population) * 100 AS 'death to population percentage' 
FROM CovidResearch..CovidDeaths
WHERE 
    total_deaths IS NOT NULL 
    AND continent IS NOT NULL
GROUP BY location, population
ORDER BY 4 DESC;