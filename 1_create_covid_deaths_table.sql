CREATE TABLE CovidDeaths (
    iso_code NVARCHAR(255), 
    continent NVARCHAR(255),
    location NVARCHAR(255),
    date DATE,
    population FLOAT,
    total_cases FLOAT,
    new_cases FLOAT,
    new_cases_smoothed FLOAT,
    total_deaths FLOAT,
    new_deaths FLOAT,
    new_deaths_smoothed FLOAT,
    total_cases_per_million FLOAT,
    new_cases_per_million FLOAT,
    new_cases_smoothed_per_million FLOAT,
    total_deaths_per_million FLOAT,
    new_deaths_per_million FLOAT,
    new_deaths_smoothed_per_million FLOAT,
    reproduction_rate FLOAT,
    icu_patients FLOAT,
    icu_patients_per_million FLOAT,
    hosp_patients FLOAT,
    hosp_patients_per_million FLOAT,
    weekly_icu_admissions FLOAT,
    weekly_icu_admissions_per_million FLOAT,
    weekly_hosp_admissions FLOAT,
    weekly_hosp_admissions_per_million FLOAT
);


BULK INSERT CovidDeaths
FROM '/var/opt/mssql/data/covid_data1.csv'
WITH (
    FIELDTERMINATOR = ',',  -- Specify the field terminator
    ROWTERMINATOR = '\n',   -- Specify the row terminator
    FIRSTROW = 2,           -- Skip the header row if necessary
    FIELDQUOTE = ''
);



