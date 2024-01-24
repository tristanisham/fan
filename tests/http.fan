import "std/net/http" for Client

var client = Client.new("https://example.com")
var body = client.fetch()
System.write(body)
