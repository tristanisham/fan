
// System.print("std/fs Dir test")
// import "std/fs" for Dir

// var dir = Dir.cwd()
// System.print(Dir.cwd())

System.print("std/os  test")
import "std/os" for Env, Process, Runtime

// var home = Env.get("HOME")
// if (home != null) {
//     System.print(home)
// } else {
//     System.print("Null")
// }

// System.print("Setting ENV TEST:")
// Env.set("TEST", "YES")
// System.print("Getting ENV TEST:")
// System.print(Env.get("TEST"))
// System.print("Unsetting ENV TEST:")
// Env.set("TEST", null)
// System.print("Getting ENV TEST (after unset)")
// var test = Env.get("TEST")

// if (test == null) {
//     System.print("Value TEST: %(test). (Should be null)")
// }

// System.print("Testing postfix and Prefix\nSetting TEST to 1")
// var testFail = Fiber.new {
//     Env.set("TEST", 1)
// }
// var error = testFail.try()
// System.print("This was meant to fail: %(error)")

// Env["TEST"] = "true"

// System.print("%(Env["TEST"]) == true")
// // .env file support
// System.print("loadDotEnv test")
// Env.loadDotEnv("./tests/.env")
// if (Env.get("DOTENV") != null) {
//     System.print("success")
// } else {
//     System.print("fail")
// }
System.print("-------------------------------------------")
System.print("Logging process args: %(Process.args.count)")
System.print("%(Runtime.os): %(Runtime.arch)")

for (arg in Process.args) {
    System.print(arg)
}
