import "std/net/http" for Client

var client = Client.new("https://example.com")
var res = client.req()

System.print(res["body"])
