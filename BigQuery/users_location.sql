SELECT 
    Id AS [User Id],
    DisplayName,
    AboutMe,
    ProfileImageUrl,
    Location,
    Reputation
FROM
    Users
WHERE
    Location LIKE '%Moldova%' or Location LIKE '%Romania%'
    and Reputation > 223