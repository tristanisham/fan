import "std/encode" for JSON

var person = {
    "name": "Doug",
    "age": 61
    }

System.print("MAP: %(person)")

// Encode as JSON
var data = JSON.encode(person)
System.print(data)

// Convert to string
var out = data.toString()
System.print(out)
