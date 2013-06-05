-- converting from metric to imperial units with type safety
module Conv
(MetricUnit(..),
	ImperialUnit(..),
	Measurement(..),
	conv)
where
data MetricUnit = Meter
				| Liter
				| KiloGram
				deriving (Show, Eq)

data ImperialUnit = Yard
				  | Gallon
				  | Pound
				  deriving (Show, Eq)

data Measurement = MetricMeasurement Double MetricUnit
				 | ImperialMeasurement Double ImperialUnit
				 deriving (Show)

symbol :: MetricUnit -> String
symbol unit
	| unit == Meter	= "m"
	| unit == Liter = "l"
	| unit == KiloGram	= "kg"
	| otherwise = error "not of type MetricUnit"

conv :: Measurement -> Measurement
conv (MetricMeasurement val typ)
	| typ == Meter		= ImperialMeasurement (val*1.09361) Yard
	| typ == Liter		= ImperialMeasurement (val*0.26172) Gallon
	| typ == KiloGram 	= ImperialMeasurement (val*2.20462) Pound
	| otherwise			= error "unknown Metric Type"

conv (ImperialMeasurement val typ)
	| typ == Yard	= MetricMeasurement (val/1.09361) Meter
	| typ == Gallon	= MetricMeasurement (val/0.26172) Liter
	| typ == Pound	= MetricMeasurement (val/2.20462) KiloGram
	| otherwise		= error "unknown Imperial Type"
