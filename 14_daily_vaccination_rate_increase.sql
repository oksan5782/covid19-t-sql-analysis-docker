-- Total population / vaccinated population ratio using CTE
WITH population_vs_vaccinations 
    (continent, location, date, population, new_vaccinations, rolling_vaccinations_sum) 
AS (
    SELECT 
        cd.continent, cd.[location], cd.[date], cd.population, cv.new_vaccinations,
        SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date) 
        AS rolling_vaccinations_sum
    FROM CovidResearch..CovidDeaths cd
    JOIN CovidResearch..CovidVaccinations cv 
        ON cd.[location] = cv.[location] AND cd.[date] = cv.[date]
    WHERE cd.continent IS NOT NULL
)
SELECT *, 
    (rolling_vaccinations_sum/population)* 100 AS vaccinated_population_percent
FROM population_vs_vaccinations;