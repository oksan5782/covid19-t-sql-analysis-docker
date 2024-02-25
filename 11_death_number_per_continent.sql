---  Death rate per continent grouping by continent
SELECT 
    continent, MAX(total_deaths) AS death_count
FROM CovidResearch..CovidDeaths
WHERE continent IS NOT NULL 
GROUP BY continent
ORDER BY death_count DESC;

---  Death rate per continent using continent column
SELECT 
    location, MAX(total_deaths) AS death_count
FROM CovidResearch..CovidDeaths
WHERE continent IS NULL 
GROUP BY location
ORDER BY death_count DESC;