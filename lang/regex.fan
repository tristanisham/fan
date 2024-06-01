
class Regex {
    #!types(pattern="String")
    construct new(pattern) {
        _ptrn = pattern
    }

    #!types(pattern=String, flags="String|List|null")
    foreign static match(input, pattern, flags)

    #!types(pattern=String)
    match(input) {
        return Regex.match(input, _ptrn, null)
    }

    #!types(pattern=String, flags="String|List|null")
    match(input, flags) {
        return Regex.match(input, _ptrn, flags)
    }

    #!types(input="String", pattern=String, flags="String|List|null")
    foreign static contains(input, pattern, flags)


    #!types(input=String)
    contains(input) {
        return Regex.contains(input, _ptrn, null)
    }

    #!types(input=String, flags="String|List|null")
    contains(input, flags) {
        return Regex.contains(input, _ptrn, flags)
    }


}
