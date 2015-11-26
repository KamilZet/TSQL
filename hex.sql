declare @b binary(2)

SELECT
	@b = 
		--CONVERT(BINARY(8), GETDATE())
		0x0003



SELECT
	@b,
	CAST(@b / POWER(2, 1) AS BINARY(8)),
	CAST(@b / POWER(2, 2) AS BINARY(8)),
	CAST(@b / POWER(2, 3) AS BINARY(8)),
	CAST(@b / POWER(2, 4) AS BINARY(8))