-- Possibility of death in case of getting a disease in several countries
SELECT location, date, total_cases, total_deaths, 
    ROUND((total_deaths/total_cases) * 100, 8) AS death_percentage 
FROM CovidResearch..CovidDeaths
WHERE location = 'Japan'
ORDER BY 1, 2;

SELECT location, date, total_cases, total_deaths, 
    ROUND((total_deaths/total_cases) * 100, 8) AS death_percentage 
FROM CovidResearch..CovidDeaths
WHERE location LIKE '%states%'
ORDER BY 1, 2;

SELECT location, date, total_cases, total_deaths, 
    ROUND((total_deaths/total_cases) * 100, 8) AS death_percentage 
FROM CovidResearch..CovidDeaths
WHERE location = 'Malaysia'
ORDER BY 1, 2;