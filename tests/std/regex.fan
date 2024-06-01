import "std/regex" for Regex

var re = Regex.new("[abcklm]")
var input = "abra cadabrea killian murphy"

var match = re.match(input)

var search = re.contains(input)

System.print("Match: %(match)\nSearch: %(search)")
