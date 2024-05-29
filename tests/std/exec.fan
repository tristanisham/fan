import "std/os" for Process

var out = Process.exec("eval", ["echo", "-n", "hi, there", "|", "sha256sum"])

System.print(out)