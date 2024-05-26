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

// foreign class JSON {
//     construct new() {}
//
//     static fromMap(map) {
//         if (!(map is Map)) {
//             Fiber.abort("Parameter is not of type Map")
//         }
//
//         var json = JSON.new()
//
//         for (entry of map) {
//             json.set(entry.key, entry.value)
//         }
//     }
//
//     foreign set(key, val);
//
//     [set]=(value) {
//         this.set(key, value)
//     }
// }