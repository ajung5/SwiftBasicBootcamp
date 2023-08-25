import Foundation

// ######### ---------- Creating data model ---------- ##########

struct UserDatabase {
    let id: Int
    let name: String
    let isPremium: Bool
}

// buat array untuk menampung mengisi data ke "UserDatabase"
let allUsers: [UserDatabase] = [
    UserDatabase(id: 3, name: "John Doe", isPremium: true),
    UserDatabase(id: 1, name: "Smith", isPremium: false),
    UserDatabase(id: 4, name: "Asep Stoberi", isPremium: true),
    UserDatabase(id: 2, name: "Dadang Konelo", isPremium: false),
    UserDatabase(id: 13, name: "Jane Doe", isPremium: true),
    UserDatabase(id: 10, name: "Udin", isPremium: false),
]

// ######### ---------- Creating data Filter ---------- ##########

// buat array baru, untuk menampung hasil filter value dari "allUsers"

//var allPremiumUsers: [UserDatabase] = []

// # cara manuual untuk filtering array
// lakukan pengulangan
//for user in allUsers {
//    // check if user is premium (filtering)
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}
//print(allPremiumUsers)

// # cara otomatis
// sebenernya swift IDE udah nyediain method untuk filtering array
var allUserIsPremium: [UserDatabase] = allUsers.filter { user in
    if user.isPremium {
        return true
    }
    
    return false
}
print(allUserIsPremium)
