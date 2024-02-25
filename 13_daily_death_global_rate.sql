-- Global total cases to death cases ratio
SELECT 
    SUM(new_cases) AS 'cases', 
    SUM(new_deaths) AS 'death cases',
    ROUND(SUM(new_deaths) / SUM(new_cases) * 100, 8) AS "global death percentage"
FROM CovidResearch..CovidDeaths
WHERE continent IS NOT NULL 
    AND new_cases IS NOT NULL;


-- Daily global death rate per new cases
SELECT date, 
    SUM(new_cases) AS 'new cases tested', 
    SUM(new_deaths) AS 'registered death cases',
    ROUND(SUM(new_deaths) / SUM(new_cases) * 100, 8) AS "daily death percentage"
FROM CovidResearch..CovidDeaths
WHERE continent IS NOT NULL 
    AND new_cases IS NOT NULL
GROUP BY date
ORDER BY 1, 2;