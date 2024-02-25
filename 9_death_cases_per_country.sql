-- Highest death stats per country 
SELECT 
    location, MAX(total_deaths) AS death_count
FROM CovidResearch..CovidDeaths
WHERE 
    total_deaths IS NOT NULL 
    AND continent IS NOT NULL
GROUP BY location, population
ORDER BY death_count DESC;