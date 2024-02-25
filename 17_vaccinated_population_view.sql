-- Total polulation / vaccinated population ratio by country using view
CREATE VIEW vaccinated_population_percent AS 
    SELECT 
        cd.continent, cd.[location], cd.[date], cd.population, cv.new_vaccinations,
        SUM(cv.new_vaccinations) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date) 
        AS rolling_vaccinations_sum
    FROM CovidResearch..CovidDeaths cd
    JOIN CovidResearch..CovidVaccinations cv 
        ON cd.[location] = cv.[location] AND cd.[date] = cv.[date]
    WHERE cd.continent IS NOT NULL;