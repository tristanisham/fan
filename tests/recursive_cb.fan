import "std/fs" for Fs, Path
import "std/os" for Process


var cwd = Fs.cwd()
// System.print("%(cwd)")

// var test = Fiber.new {
//     Fs.write("%(cwd)/examples/out.txt", "This works!\n")
// }

// var error = test.try()
// if (error != null) {
//     System.print("Write: %(error)")
// }

// test = Fiber.new {
//     Fs.append("%(cwd)/examples/out.txt", "This appended!")
// }

// error = test.try()
// if (error != null) {
//     System.print("Append: %(error)")
// }

// test = Fiber.new {
//     Fs.remove("%(cwd)/examples/out.txt")
// }

// error = test.try()
// if (error != null) {
//     System.print("Remove: %(error)")
// }

// var all = Fs.listAll("%(cwd)/src")
//     for (entry in all) {
//         System.print("%(entry)")
//     }

var test = Fiber.new {
    var target = Path.from("src/")
    if (target.isDirectory()) {
        System.print("This is a directory!")
    } else {
        System.print("This isn't a directory")
    }
}

var err = test.try()
if (err != null) {
    System.print(err)
}
