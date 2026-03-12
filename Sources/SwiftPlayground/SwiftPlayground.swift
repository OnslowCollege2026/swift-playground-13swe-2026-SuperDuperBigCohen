// The Swift Programming Language
// https://docs.swift.org/swift-book


        struct Student {
            var name: String
            var age: Int
            let ID: Int
            var email: String
            let NSN: Int
        
        func summary() -> String {
            return """
            name: \(name)
            age: \(age)
            ID: \(ID)
            email: \(email)
            NSN: \(NSN)
            """

        }
        }

@main
struct SwiftPlayground {
    static func main() {
/*        let Student = [
            (ID: 001, name: "cohen", age: 17, NSN: 1234567890, email: "cohen.budden@student.onslow.school.nz"),
            (ID: 002, name: "renny", age: 17, NSN: 1234567891, email: "renny.chungus@student.onslow.school.nz"),
            (ID: 003, name: "lenny", age: 17, NSN: 1234567892, email: "lenny.chungus@student.onslow.school.nz"),
            (ID: 004, name: "paul", age: 82, NSN: 1234567893, email: "paul.chungus@student.onslow.school.nz"),
            (ID: 005, name: "benny", age: 17, NSN: 1234567894, email: "benny.chungus@student.onslow.school.nz")
            ]
        
        print ("\(Student)")
    }
}*/

// Task A: Map Filter Reduce
//        let numbers = [7, 14, 21, 28, 35]
//        let product = numbers.reduce(1) {$0 * $1}


// Hidden numbers task
        let mixed = ["cat", "7", "owl", "15", "dog", "3"]
        let numbers = mixed.map { Int($0) }
        print(numbers)

        //Task B: midnight filter
        let sightings = [
            (name: "moth", score: 2),
            (name: "wolf", score: 4)
        ]
        print(sightings)



// Task D: the haunted archive

            let archive = [
        [
            [["candle", "dust"], ["mirror", "ash"]],
            [["whisper", "shadow"], ["clock", "veil"]]
        ],
        [
            [["stone", "key"], ["relic", "name"]],
            [["cipher", "bone"], ["ember", "seal"]]
        ],
        [
            [["feather", "ink"], ["glow", "eclipse"]],
            [["riddle", "echo"], ["ember", "glyph"]]
        ]
    ]

    let wing = archive.last { wing in
        wing.contains { room in
            room.contains {shelf in
                shelf.contains { $0.hasPrefix("e")}
            }
        }
    } !

    let room = wing.last { room in
        room.contains { shelf in
            shelf.contains { $0.count == 4 }
        }
    }


    }
}