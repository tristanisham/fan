import "std/net/http" for Request

var resp = Request.fetch("https://example.com/")
System.print("%(resp)")
