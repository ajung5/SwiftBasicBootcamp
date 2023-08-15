import Foundation

// tuples dapat menggabungkan dan membuat grup data yang berbeda

var userName: String = "John Doe"
var isUserPremium: Bool = false
var isUserNew: Bool = true

func getUserName() -> String {
    return userName
}

func getUserIsPremium() -> Bool {
    return isUserPremium
}

// tidak menggunakan tuples, hanya terbatas untuk satu tipe data / return value.
// karena pada function getUserInfo() memiliki dua buah function yang di panggil.
// dan keduanya memiliki tipe data / return value yang berbeda. getUsername() -> String, sedangkan getUserIsPremium() -> Bool
func getUserInfo () -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}
print(getUserInfo())

// untuk mengatasi problem diatas, digunakanlah tuples.
// dengan menambahkan tanda () diantara return value dari masing-masing variabel/function
// tuples dapat menggabungkan beberapa macam data (Int, String, Bool, dll)
func getUserInfo2 () -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}
print(getUserInfo2())

// -------------- Tuples Pada Const/Variabel ----------------- \\
// selain dapat digunakan pada function, tuples juga dapat digunakan pada const/variabel
// var "userData2" merupakan contoh penggunaan tuples, karena memiliki beberapa tipe data dalam satu variabel.
var userData: String = userName
var userData2: (String, Bool, Bool) = (userName, isUserPremium, isUserNew)


// -------------- Memanggil function dengan tanpa menambahkan nama parameter pada tuples ----------------- \\
let userInfo1 = getUserInfo2()
// untuk mengakses data pada function getUserInfo2() yang di simpan di const "userInfo1"
// maka dibuat const yang bernama "name1"
// kemudian, angka "0" merupakan array dari data pada function getUserInfo2().
let name1 = userInfo1.0
print(name1)

// -------------- Memanggil function dengan menambahkan nama parameter pada tuples ----------------- \\
// untuk memudahkan dalam mengakses data pada func getUserData(), maka perlu ditambahkan nama pada parameter data tsb
// contoh: name: String, isPremium: Bool
func getUserInfo3 () -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}
print(getUserInfo3())

let userInfo2 = getUserInfo3()
// pada const "name1" dan "name2", data yang diakses sama aja. yaitu, data pada const "name" pada func getUserName()
// namun bedanya adalah pada "name1", parameter yang bertipe data String tidak mempunyai nama. alias masih menggunakan array 0
// sedangkan pada const name2, parameter yang bertipe data String sudah mempunyai nama. yaitu "name: String"
let name2 = userInfo2.name
print(name2)

// -------------- Contoh lain penggunaan tuples ----------------- \\

// pada func "getUserInfo4()", func tsb mengakses langsung data pada variabel diatas.
// dan memberikan nama pada masing-masing parameter
func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, isUserPremium, isUserNew)
}

// parameter "info" menggunakan semua tipe data pada func "getUserInfo4()"
func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    print(info)
}

// const
let ingpo = getUserInfo4()
doSomethingWithUserInfo(info: ingpo)
