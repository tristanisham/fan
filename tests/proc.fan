import "std/os" for Process

System.print("Process test:")
var result = Process.exec("date", ["+\%Y-\%m-\%d"])
System.print("The current date is: %(result)")
System.print(Process.args)