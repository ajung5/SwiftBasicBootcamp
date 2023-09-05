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
    UserDatabase(id: 1, name: "Smith", isPremium: true),
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

// # cara otomatis 1
// sebenernya swift IDE udah nyediain method untuk filtering array
//var allUserIsPremium: [UserDatabase] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    }
//
//    return false
//}
//

// # cara otomatis 2
var allUserIsPremium: [UserDatabase] = allUsers.filter { user in
    return user.isPremium
}
for (_, item) in allUserIsPremium.enumerated() {
    print("ID: \(item.id), Nama: \(item.name), Has Premium Account: \(item.isPremium)")
}


print("------------------------------")

// # cara otomatis 3
// user ddigantikan dengan $0
var allUserIsPremium2: [UserDatabase] = allUsers.filter({$0.isPremium})

// hasilnya masih belum berurutan, karena cuma di filter. belum di sort
for (_, item) in allUserIsPremium2.enumerated() {
    print("ID: \(item.id), Nama: \(item.name), Has Premium Account: \(item.isPremium)")
}

print("------------------------------")

// ######### ---------- Creating data Sort ---------- ##########

// contoh #1
var orderedUser: [UserDatabase] = allUsers.sorted { user1, user2 in
    return user1.id < user2.id
}

// menggunakan "_", karena ada parameter yang ga digunakan
for (_, item) in orderedUser.enumerated() {
    print("\(item.id)")
}

print("------------------------------")

// contoh #2
var sortOrdered: [UserDatabase] = allUserIsPremium.sorted { user3, user4 in
    return user3.id < user4.id
}

// pengulangan untuk mengakses value di dalam "sortOrdered" var
for (_, item) in sortOrdered.enumerated() {
    print(item.id)
}

print("------------------------------")

// contoh #3 sama halnya seperti tuple, urutan index pertama adalah index 0, selanjutnya index 1, dst.
// cara cepat
var sortOrdered2: [UserDatabase] = allUsers.sorted(by: {$0.id > $1.id})

for (_, item) in sortOrdered2.enumerated() {
    print("ID: \(item.id)")
}

print("------------------------------")

// ######### ---------- Map ---------- ##########
// The map(_:) method has the ability to transform a sequence of elements.
// We can use the map(_:) method to transform the elements of the array


// #1
var userNames: [String] = allUsers.map { user in
    return user.name
    
}
print(userNames)

print("------------------------------")

// #2
var userNames2: [String] = allUsers.map({$0.name})
print(userNames2)
