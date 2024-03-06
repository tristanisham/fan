import "std/net/http" for Request

var client = Request.new("https://example.com")
var body = client.send()
System.write(body)
