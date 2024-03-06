import "std/encoding" for Markdown
var testDoc = "This is a test *comment*.
This is an **emboldened** comment."

var text = Markdown.toHTML(testDoc)
System.print(text)

