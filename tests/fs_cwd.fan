import "std/fs" for File

var file = File.open("fan.sh", "r+")
System.print(file.read())
file.close()