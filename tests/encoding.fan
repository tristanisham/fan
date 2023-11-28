import Base64 for "std/encoding"
var value = Base64.encode("abcdefg")
System.print("Encode %(value))")

var decode = Base64.decode(value)
System.print("Decode %(decode)")