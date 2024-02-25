-- Disease cases to population ratio
SELECT 
    location, date, population, total_cases, 
    (total_cases/population) * 100 AS 'cases percentage' 
FROM CovidResearch..CovidDeaths
WHERE location LIKE '%states%'
ORDER BY 1, 2;

SELECT  
    location, date, population, total_cases, 
    (total_cases/population) * 100 AS 'cases percentage' 
FROM CovidResearch..CovidDeaths
WHERE location = 'Ukraine'
ORDER BY 1, 2;

SELECT 
    location, date, population, total_cases, 
    (total_cases/population) * 100 AS 'cases percentage' 
FROM CovidResearch..CovidDeaths
WHERE location = 'France'
ORDER BY 1, 2;