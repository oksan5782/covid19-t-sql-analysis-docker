-- Highest infection rate per population
SELECT 
    location, population, MAX(total_cases) AS 'highest infection count', 
    MAX(total_cases/population) * 100 AS 'cases per population percentage' 
FROM CovidResearch..CovidDeaths
WHERE 
    total_cases IS NOT NULL 
    AND continent IS NOT NULL
GROUP BY location, population
ORDER BY 4 DESC;