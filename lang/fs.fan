class Fs {
    foreign static cwd()

    /**
    * @returns Num|null
    */
    static write(path, text) {
        if (path is String && text is String) {
            var file = File.open(path, "w+")
            var bytesLen = text.count
            file.write(text)
            file.close()
            return bytesLen
        }

        return null
    }

    static append(path, text) {
        if (path is String && text is String) {
            var file = File.open(path, "a")
            var len = text.count
            file.write(text)
            file.close()

            return len

        }
        return null
    }

    /// Returns String or null
    static read(path) {
        if (path is String) {
            var target = Path.from(path)
            if (!target.exists()) {
                return null
            }

            var file = File.open(path, "r")
            var body = file.read()
            file.close()

            return body
        }

        return null
    }

    /**
    * Removes file at given path. Will not delete directories
    */
    foreign static remove(path)

    /**
    * Recursively lists all files and directories in the provided path
    */
    foreign static listAllRecursive(path)

    foreign static listAll(path)

    foreign static isDirectory(path)

    foreign static mkdir(path)
}

foreign class File {
    construct open(path, mode) {
    }

    foreign write(text)
    foreign read()
    foreign close()
}

class Path {

    construct from(file) {
        _filepath = file
    }

    exists() {
        return Path.exists(_filepath)
    }



    /// Returns a bool indicating if the Path is to a directory or not.
    isDirectory() {
        return Fs.isDirectory(_filepath)
    }

    toString() {
        return _filepath
    }

    abs(path) {
        return Path.canonical(path)
    }

    abs() {
        return Path.canonical(_filepath)
    }

    replaceExt(str) {
        var newFP = _filepath.trimEnd(Path.ext(_filepath))
        return newFP + str
    }

    /// join concatenates the entries (String or List of String) to the existing path
    /// with the system's PATH_SEPARATOR. Returns the complete string on success or null on failure.

    static join(entries) {
     var buffer = ""

     for (entry in entries) {
        buffer = buffer + Path.separator() + entry
     }

     var i = 0
     var newBuffer = ""
     while (i < buffer.count) {
        var char = buffer[i]
        var s = Path.separator()
        if (i+1 <= buffer.count) {
            if (char != s || (char == s && buffer[i+1] != s)) {
                    newBuffer = newBuffer + char
            }
        }

        i = i + 1
     }

     return Path.from(newBuffer)
    }

    foreign static canonical(path)

    foreign static exists(path)

    foreign static separator()

    foreign static ext(path)

    ext() {
            return Path.ext(_filepath)
        }

    foreign static basename(path)

    basename() {
        return Path.basename(_filepath)
    }

    foreign static filename(path)

    filename() {
        return Path.filename(_filepath)
    }


}
