-- bookId, title, [authors]
data BookInfo = Book Int String [String]
	deriving (Show)
data MagazineInfo = Magazine Int String [String]
	deriving (Show)
data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = 
	CreditCard CardNumber CardHolder Address
	| CashOnDelivery
	| Invoice CustomerID
	deriving (Show)

-- showing difference between very similar data structures
-- tuples would confuse!
data Cartesian2D =
	Cartesian2D Double Double
	deriving (Eq, Show)

data Polar2D =
	Polar2D Double Double
	deriving (Eq, Show)

data Roygbiv =
	Red 
	| Orange
	| Yellow
	| Green
	| Blue
	| Indigo
	| Violet
	deriving (Eq, Show)

type Point = (Double, Double)
type Radius = Double
data Shape =
	Circle Point Radius
	| Poly [Point]

bookID (Book id _ _) = id
bookTitle (Book _ title _) = title
bookAuthors (Book _ _ authors) = authors

data Customer = Customer {
	customerID 		:: CustomerID,
	customerName	:: String,
	customerAddress	:: Address
} deriving (Show)

data List' a =
	Cons a (List' a)
	| Nil
	deriving (Show)

data BTree a =
	Node a (BTree a) (BTree a)
	| Empty
	deriving (Show)