with AnswerScores AS
(
  SELECT
    Users.Id AS [User Link],
    SUM(Answers.Score) AS Score
  FROM Posts AS Answers 
    INNER JOIN Posts AS ParentQuestions 
    ON ParentQuestions.Id = Answers.ParentId
    
    INNER JOIN Users AS Users
    ON Answers.OwnerUserId = Users.Id
    
    INNER JOIN PostTags 
    ON PostTags.PostId = Answers.ParentId
    
    INNER JOIN Tags
    ON Tags.Id = PostTags.TagId
  WHERE
    LOWER(Location) LIKE LOWER('%##Location##%')
    and Tags.Tagname='##Skill1##'
  GROUP BY
    Users.Id
),

AnswerScores1 AS
(
  SELECT
    Users.Id AS [User Link],
    SUM(Answers.Score) AS Score1
  FROM Posts AS Answers 
    INNER JOIN Posts AS ParentQuestions 
    ON ParentQuestions.Id = Answers.ParentId
    
    INNER JOIN Users AS Users
    ON Answers.OwnerUserId = Users.Id
    
    INNER JOIN PostTags 
    ON PostTags.PostId = Answers.ParentId
    
    INNER JOIN Tags
    ON Tags.Id = PostTags.TagId
  WHERE
    LOWER(Location) LIKE LOWER('%##Location##%')
    and Tags.Tagname='##Skill2##'
  GROUP BY
    Users.Id
)
SELECT 
  TOP 100
  Users.DisplayName,
  ISNULL(AnswerScores.[User Link], AnswerScores1.[User Link]) as [User Link],
  ISNULL(AnswerScores.Score, 0) as [ ##Skill1## Score],
  ISNULL(AnswerScores1.Score1, 0) as [##Skill2## Score],
  Users.Reputation
FROM
  AnswerScores
FULL JOIN AnswerScores1
  ON AnswerScores.[User Link] = AnswerScores1.[User Link]
INNER JOIN Users
  ON AnswerScores.[User Link] = Users.Id
Where 
  Users.Reputation >= '##Reputation##'