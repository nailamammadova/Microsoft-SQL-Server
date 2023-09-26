Select * from Employee

Select Education, COUNT(Gender) from Employee
Where Education = 'Bachelors'
GROUP By Education 

Select Education, COUNT(Gender) from Employee
Where Education = 'Masters'
GROUP By Education 

--- How many are there everbenced/not everbenched students in Bachelor Degree 
SELECT 
    COUNT(CASE WHEN EverBenched = 'Yes' THEN 1 END) as CountBenched,
    COUNT(CASE WHEN EverBenched = 'No' THEN 1 END) as CountNotBenched
FROM Employee
WHERE Education = 'Bachelors';


--- How many are there everbenched/noteverbenched students in Master's Degree
SELECT  
    Count(Case When EverBenched = 'Yes' THEN 1 END) as CountBenched,
    COUNT(Case When EverBenched = 'No' THEN 1 END) as CountNotBenched
From Employee
Where Education = 'Masters'

Select Distinct(City) from Employee

--- What is an average age for Bachelor's Degree
Select AVG(Age) from Employee
Where Education = 'Bachelors'

--- What is an average age for Master's Degree
Select AVG(Age) from Employee
Where Education = 'Masters'

--- How many are Bachelor's degree students there in each city indicated?
SELECT City, COUNT(Education) FROM Employee
WHERE Education = 'Bachelors'
GROUP BY City;

--- How many are Bachelor's degree students there in each city indicated?
SELECT City, COUNT(Education) FROM Employee
WHERE Education = 'Masters'
GROUP BY City;

--- What is average experience in domain for Bachelor's degree

Select AVG(ExperienceInCurrentDomain) from Employee
Where Education = 'Bachelors'

--- What is average experience in domain for Master's degree
Select AVG(ExperienceInCurrentDomain) from Employee
Where Education = 'Masters'
