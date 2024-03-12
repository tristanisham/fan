import "std/encode" for JSON
import "std/os" for Runtime

var person = {
    "name": "Doug",
    "age": 61,
    }

// System.print("MAP: %(person); Is Map: %(person is Map); JSON is %(JSON)")
System.print(person["age"])
// Encode as JSON


var data = JSON.encode(person)

System.print(Runtime.typeof(data))


// System.print(data)

// // Convert to string
// var out = data.toString()
// System.print(out)
