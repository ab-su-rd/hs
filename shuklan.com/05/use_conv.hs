import Conv

reportMeasurement :: Measurement -> String
reportMeasurement (Conv.MetricMeasurement val typ)
	= (show val) ++ " " ++ (show typ)
reportMeasurement (Conv.ImperialMeasurement val typ)
	= (show val) ++ " " ++ (show typ)
