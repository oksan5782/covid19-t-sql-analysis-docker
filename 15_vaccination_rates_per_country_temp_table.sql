-- Total population / vaccinated population ratio by country, date using temp table

DROP TABLE IF EXISTS #PercentPopulationVaccinated;

CREATE TABLE #PercentPopulationVaccinated
(   
    continent NVARCHAR(255),
    location NVARCHAR(255),
    date DATE,
    population NUMERIC,
    new_vaccinations NUMERIC,
    rolling_people_vaccinated NUMERIC
)

INSERT INTO #PercentPopulationVaccinated
    SELECT 
        cd.continent, cd.[location], cd.[date], cd.population, cv.new_vaccinations,
        SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date) 
        AS rolling_vaccinations_sum
    FROM CovidResearch..CovidDeaths cd
    JOIN CovidResearch..CovidVaccinations cv 
        ON cd.[location] = cv.[location] AND cd.[date] = cv.[date]
    WHERE cd.continent IS NOT NULL


SELECT *, 
    (rolling_people_vaccinated/population) * 100 AS vaccinated_population_percent
FROM #PercentPopulationVaccinated
WHERE rolling_people_vaccinated IS NOT NULL;