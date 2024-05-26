import "std/encoding" for Markdown
import "std/fs" for Fs, Path

var files = Fs.listAllRecursive(Fs.cwd())

// List of markdown files in the directory
var mdFiles = []

for (i in files) {
    if (Path.ext(i) == "md") {
        System.print(i)
        mdFiles.add(i)
    }
}

System.print(mdFiles.count)
