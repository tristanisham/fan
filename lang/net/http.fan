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



