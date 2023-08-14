import Foundation

// optional chaining

//var firstName: String? = "John"
//var lastName: String? = nil
//
//func getUsername() -> String? {
//
//    if let firstName, let lastName {
//        return firstName + lastName
//    } else {
//        return "False aaa"
//    }
//
//}

func getUsername() -> String? {
    return nil
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUsername()
    // i will get the count if the "username" is not nill
    let count = username?.count // harus di unwrap dulu
    
    
    // cek jika function getUsername mempunyai value / tidak
    if let newValue = count {
        print("Nilai function getUsername() :",getUsername() ?? "a" )
    } else {
        print("Nilai function getUsername() :",getUsername() ?? "B" )
    }
    
    let title: String = getTitle()
    // i will geet the count always
    let count2 = title.count
    print(count2)
    
    // if username has a value, and first character in username has a value, then return the value of isLowerCase
    // Optional Chaining
    let firstCharacterIsLowered = username?.first?.isLowercase ?? false
    print(firstCharacterIsLowered)
    
    // ------------ Explicitly unwrap optionals ------------------ \\
    // i will get the count, because i know 100% that username is not nil
    // this will crash your application if username is nil
//    let count3: Int = username!.count
//    print(count3)
}

print(getUserData())




