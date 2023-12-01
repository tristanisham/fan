import "std/fs" for Fs, Path
import "std/os" for Process

var args = Process.args()
var cwd = Fs.cwd()

var bundler = Fiber.new {
    var target = Path.from(args[0])
    if (target.isDirectory()) {
        var all = Fs.listAll(target.toString())
        for (file in all) {
            var stat = Path.from(file)
            if (stat.isDirectory()) {
                continue
            }

            var buffer = Process.exec("zip", "-r - %(file)")
            Fs.remove(file)
            if (Fs.write(stat.join([args[1], file.split(Path.seperator())[-1]])) == null) {
                System.print("This buffer wasn't saved")
            }

        }
    } else {
        System.print("This isn't a directory")
        Process.exit(1)
    }
}

var err = bundler.try()
if (err != null) {
    System.print(err)
}
