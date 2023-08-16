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
