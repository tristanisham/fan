import "std/fmt" for Fmt, Color

var test = "apple"


var result = Fmt.reverse(test)
System.print("%(Color.green())%(result)%(Color.reset())")