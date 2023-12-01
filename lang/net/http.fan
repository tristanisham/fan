<<<<<<< HEAD
class Request {
    foreign static fetch(url)
}

=======
foreign class Request {
    construct new(url) {
        this._headers = {}
    }

    headers {_headers}

    foreign method(method)


    [key]=(value) {
        this._headers[key] = value
    }

    [key] {
        return this._headers[key]
    }
}



>>>>>>> ab3b3eed5e7aad325f53e17615edb90431f99783
