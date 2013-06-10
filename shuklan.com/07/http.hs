import Network.HTTP

main = do
	   simpleHTTP (getRequest "http://www.google.com") >>= getResponseBody
