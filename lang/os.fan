import "std/fs" for File, Path, Fs

class Env {
  // get returns the associated value from 'key'.
  // If the variable is unset, get returns null.
  // @param key: string
  // @return string | null
  foreign static get(key)

  // set associates key=val for the running process.
  // If val is null, set will unset 'key'
  // If an error occurs setting or unsetting 'key', set will
  // throw an error.
  // @param val: string | null
  // @throws
  foreign static set(key, val)

  static [key] {
    return Env.get(key)
  }

  static [key]=(val) {
    return Env.set(key, val)
  }

  static loadDotEnv(path) {
    if (path == null) {
      var cwd = Fs.cwd()
      var path = "%(cwd)%(Path.separator()).env"

      if (!Path.exists(path)) {
        return
      }

      var dotenv = File.open(path, "r")
      var envFile = dotenv.read()
      var lines = envFile.split("\n")
      for (line in lines) {
        if (line.contains("=")) {
          var halves = line.split("=")

          this.set(halves[0], halves[1])
        }
      }
      dotenv.close()
    } else {
        var dotenv = File.open(path, "r")
        var envFile = dotenv.read()
        var lines = envFile.split("\n")
        for (line in lines) {
          if (line.contains("=")) {
            var halves = line.split("=")

            this.set(halves[0], halves[1])
          }
        }
      dotenv.close()
    }

  }

}

class Process {
  // TODO: This will need to be smarter when wren supports CLI options.
  static args { allArguments.count >= 3 ? allArguments[3..-1] : [] }

  foreign static allArguments
  foreign static cwd
  foreign static pid
  foreign static ppid
  foreign static exec(target, args)
  foreign static exit(code)
}

class Runtime {
  foreign static os
  foreign static arch
  foreign static typeOf(data)
}
