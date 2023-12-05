
class Fmt {
    /// Returns a reversed String or null if 'str' is not a String
    static reverse(str) {  
        if (!(str is String)) {
            return null
        }

        var size = str.count
        var out = ""
        while (size != 0) {
            out = out + str[size-1]
            System.print(out)
            size = size-1
        }

        return out
    }
}