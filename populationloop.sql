--DROP TABLE if EXISTS evaluator
--CREATE TABLE evaluator (rownumber int, checksumnumber binary(16), hashbytesreturn binary(32))

DECLARE @counter1 INT = 40000001

WHILE @counter1 < 50000001
BEGIN

INSERT INTO dbo.evaluator
(
    rownumber,
    checksumnumber,
    hashbytesreturn
)
VALUES
(
    @counter1, -- rownumber - int
    checksum(@counter1), -- checksumnumber - binary
    hashbytes('SHA2_256', CAST(@counter1 AS binary)) -- hashbytesreturn - binary
)
SET @counter1 = @counter1 + 1
END

--;WITH cte2 AS (
--SELECT 

--COUNT(*) AS rc,
--Checksumnumber 

--FROM evaluator 
--GROUP BY checksumnumber
--)

--SELECT * FROM cte2 c    WHERE rc >=2

SELECT COUNT(*) AS evaluatorcount FROM dbo.evaluator e	