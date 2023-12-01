import "std/fs" for File

var file = File.open("void.sh", "r+")
System.print(file.read())
file.close()