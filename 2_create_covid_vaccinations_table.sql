CREATE TABLE CovidVaccinations (
    iso_code NVARCHAR(255), 
    continent NVARCHAR(255),
    location NVARCHAR(255),
    date DATE,
    new_tests INT,
    total_tests INT,
    total_tests_per_thousand FLOAT,
    new_tests_per_thousand FLOAT,
    new_tests_smoothed INT,
    new_tests_smoothed_per_thousand	FLOAT,
    positive_rate FLOAT,
    tests_per_case FLOAT,
    tests_units	TEXT,
    total_vaccinations FLOAT,
    people_vaccinated INT,
    people_fully_vaccinated INT,
    new_vaccinations INT,
    new_vaccinations_smoothed FLOAT,
    total_vaccinations_per_hundred FLOAT,
    people_vaccinated_per_hundred FLOAT,
    people_fully_vaccinated_per_hundred FLOAT,
    new_vaccinations_smoothed_per_million FLOAT,
    stringency_index FLOAT,
    population_density FLOAT,
    median_age FLOAT,
    aged_65_older FLOAT,
    aged_70_older FLOAT,
    gdp_per_capita FLOAT,
    extreme_poverty FLOAT,
    cardiovasc_death_rate FLOAT,
    diabetes_prevalence FLOAT,
    female_smokers FLOAT,
    male_smokers FLOAT,
    handwashing_facilities FLOAT,
    hospital_beds_per_thousand FLOAT,
    life_expectancy	FLOAT,
    human_development_index FLOAT
);


BULK INSERT CovidVaccinations
FROM '/var/opt/mssql/data/covid_data2.csv'
WITH (
    FIELDTERMINATOR = ',',  -- Specify the field terminator
    ROWTERMINATOR = '\n',   -- Specify the row terminator
    FIRSTROW = 2,           -- Skip the header row if necessary
    FIELDQUOTE = ''
);

