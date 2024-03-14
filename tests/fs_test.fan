import "std/fs" for File

var file = File.open("Cargo.toml", "r+")
System.print(file.read())
file.close()

// import "std/fs" for Fs

