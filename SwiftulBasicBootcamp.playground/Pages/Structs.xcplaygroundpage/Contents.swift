import Foundation

// Structs are fast
// Structs are stored in the stack (memory)
// Objects in the stack are value types
// Value types are copied & mutated


// ######### ---------- Initializer ---------- ##########
// membuat object Quiz
struct Quiz {
    // Property pada object
    let title: String
    let dateCreated: Date
    
    // Structs have an implicit init
    // Swift membuat init otomatis tanpa harus membuat func seperti dibawah
    // "judul" & "tanggalDibuat" = parameter pada func init
    init(judul: String, tanggalDibuat: Date) {
        self.title = judul // title = judul "parameter pada initializer"
        self.dateCreated = tanggalDibuat // dateCreated = tanggalDibuat  "parameter pada initializer"
    }
}

let myObject: String = "Hello World!"

let myQuiz: Quiz = Quiz(judul: "Quiz 1", tanggalDibuat: .now)

print(myQuiz.title) // mengakses Property "title" pada object "myQuiz"
print(myQuiz.dateCreated) // mengakses Property "dateCreated" pada object "myQuiz"


// ######### ---------- Customizing Initializer ---------- ##########
// membuat object Quiz2
struct Quiz2 {
    // Property pada object
    let title: String
    let taskCount: Int
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
    // Swift membuat init otomatis tanpa harus membuat func seperti dibawah
    // "judul" & "tanggalDibuat" = parameter pada func init
    
    // kostumisasi init
    // parameter "tanggalDibuat" diberikan default value
    init(judul: String, jumlahSoal: Int, tanggalDibuat: Date = .now, isPremium: Bool?) {
        self.title = judul // title = judul "parameter pada initializer"
        self.taskCount = jumlahSoal // title = judul "parameter pada initializer"
        self.dateCreated = tanggalDibuat // dateCreated = tanggalDibuat  "parameter pada initializer"
        self.isPremium = isPremium
    }
}

let myQuiz2: Quiz2 = Quiz2(judul: "Matematika", jumlahSoal: 99, isPremium: nil)
print(myQuiz2)


struct Car {
    let carManufacture: String
    let year: Date
    let carType: String
    let engine: String?
    
    init(carManufacture: String, year: Date?, carType: String, engine: String?) {
        self.carManufacture = carManufacture
        self.year = year ?? .now // property "year" bertipe data bukan optionals, tetapi di parameter func init bertype optional. jadi harus di unwrap dulu menggunakan coalescing (??)
        self.carType = carType
        self.engine = engine
    }
}

let myCar: Car = Car(carManufacture: "Toyota", year: nil, carType: "SUV", engine: "Diesel")
print(myCar)

// ######### ---------- Upadting struct ---------- ##########

// ######### ---------- Immutable struct ---------- ##########
// "Immutable struct" = all "let" constants = not mutable = "cannot mutate it"
// membuat object "UserModel"
struct UserModel {
    let name: String
    let isPremium: Bool
}

// membuat varibel "user1"
var user1: UserModel = UserModel(name: "Ajung", isPremium: false)

func markUserAsPremium () {
    print(user1)
    
    // update property  "isPremium" pada object "UserModel" dengan cara mengambil nilai "user1" sebelumnya
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

markUserAsPremium()
