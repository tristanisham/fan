class Fs {
    foreign static cwd()
    /**
    * @returns Number|null
    */
    static write(path, text) {
        if (path is String && text is String) {
            var file = File.open(path, "w")
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

    /**
    * Removes file at given path. Will not delete directories
    */
    foreign static remove(path)

    /**
    * Recusively lists all files and directories in the provided path
    */
    foreign static listAll(path)

    foreign static isDirectory(path)
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

    /// join concatonates the entries (String or List of String) to the existing path
    /// with the system's PATH_SEPERATOR. Returns the complete string on success or null on failure.
    join(entries) {
        if (entries is String) {
            _filepath = %(_filepath) + this.seperator() + entries
        } else if (entries is List) {
            for (entry in entries) {
                _filepath = %(_filepath) + this.seperator() + entry
            }
        } else {
            return null
        }

        return _filepath

    }

    foreign static canonical(path)

    foreign static exists(path)

    foreign static seperator()
}
