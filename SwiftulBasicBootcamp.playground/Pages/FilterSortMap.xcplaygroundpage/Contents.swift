import Foundation

// ######### ---------- Creating data model ---------- ##########

struct UserDatabase {
    let id: Int
    let name: String
    let isPremium: Bool
}

// buat array untuk menampung mengisi data ke "UserDatabase"
let allUsers: [UserDatabase] = [
    UserDatabase(id: 3, name: "John Doe", isPremium: false),
    UserDatabase(id: 1, name: "Smith", isPremium: false),
    UserDatabase(id: 4, name: "Asep Stoberi", isPremium: false),
    UserDatabase(id: 2, name: "Dadang Konelo", isPremium: false),
    UserDatabase(id: 13, name: "Jane Doe", isPremium: false),
    UserDatabase(id: 10, name: "Udin", isPremium: false),
]
