SELECT  
-- showing the possible hashbytes options by length so you can choose the approprite binary length
		DATALENGTH(HASHBYTES('MD2', 'Testing')) AS [MD2Length],
        DATALENGTH(HASHBYTES('MD4', 'Testing')) AS [MD4Length],
		-- probably shouldn't use less than MD5
        DATALENGTH(HASHBYTES('MD5', 'Testing')) AS [MD5Length],
        DATALENGTH(HASHBYTES('SHA', 'Testing')) AS [SHALength],
        DATALENGTH(HASHBYTES('SHA1', 'Testing')) AS [SHA1Length],
		-- I'm hashing keys with this output seems to be good at avoiding a collision
        DATALENGTH(HASHBYTES('SHA2_256', 'Testing')) AS [SHA2_256Length],
        DATALENGTH(HASHBYTES('SHA2_512', 'Testing')) AS [SHA2_512Length];