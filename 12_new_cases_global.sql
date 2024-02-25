-- New cases tested by date global
SELECT 
    date, SUM(new_cases) AS 'new cases tested' 
FROM CovidResearch..CovidDeaths
WHERE 
    continent IS NOT NULL 
    AND new_cases IS NOT NULL
GROUP BY date
ORDER BY 1, 2;
