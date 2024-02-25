-- Percentage of vaccinated population by country
WITH population_vaccinations (continent, location, population, rolling_vaccinations_sum)
AS (
    SELECT 
        cd.continent, 
        cd.[location], 
        cd.population, 
        SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.date) AS rolling_vaccinations_sum
    FROM 
        CovidResearch..CovidDeaths cd
    JOIN 
        CovidResearch..CovidVaccinations cv ON cd.[location] = cv.[location] AND cd.[date] = cv.[date]
    WHERE 
        cd.continent IS NOT NULL
)
SELECT 
    continent, 
    location, 
    MAX(population) AS population, 
    MAX(rolling_vaccinations_sum) AS total_vaccinated,
    (MAX(rolling_vaccinations_sum) / MAX(population)) * 100 AS vaccinated_population_percent
FROM 
    population_vaccinations
GROUP BY 
    location, continent, location
ORDER BY 2;

