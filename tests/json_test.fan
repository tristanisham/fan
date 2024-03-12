import "std/encode" for JSON
import "std/os" for Runtime


var data = JSON.new()

data["name"] = "Doug"
data["age"] = 61

System.print(data.toString())


