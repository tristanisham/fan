class Base64 {
    foreign static encode(data)

    foreign static decode(data)
}

class Base32 {
    foreign static encode(data)

    foreign static decode(data)
}

class Base16 {
    foreign static encode(data)

    foreign static decode(data)
}

class Markdown {
    foreign static toHTML(buff)
}

foreign class JSON {
    construct encode(data) {
        if (!(data is Map)) {
            Fiber.abort("Argument 'data' must be of type Map")
        }

        
    }

    foreign insert(key, val)

    foreign toString()

}