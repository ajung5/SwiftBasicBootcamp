import Foundation

// An Optional is a type on its own, actually one of Swift 4’s new super-powered enums. It has two possible values, None and Some(T), where T is an associated value of the correct data type available in Swift 4.

// There is always a value and it is a Boolean
let isActivated: Bool = true

// we don't know if there is a vakue, but if there is, it is a boolean
// Optional values are: true, false or nil
var anotherActivated: Bool? = nil

//print(anotherActivated)
anotherActivated = nil


// -------- nil coalescing operator (??) ----------- \\
let newValue: Bool? = anotherActivated // ini masih "optionals", karena blm di unwrap

// the value of anotherActivated (if there is one), otherwise false
let newValue2: Bool = anotherActivated ?? false // false adalah default value dari optional anotherActivated
print("New Value 2: \(newValue2.description)") // hasilnya akan "false". karena varibel "anotherActivated" bernilai nil


var myString: String? = "Hello World"
print(myString ?? "There is no value")

myString = "New Text"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

print("--------- /// ---------")

var phoneNumber: Int? = nil
// contoh nil coalescing lainnya

// unwrap variabel "phoneNumber" yang tadinya optionals dengan menggunakan variabel baru bernama "myPhoneNumber"
// jika dilihat, sekarang variabel "myPhoneNumber" bukan lagi optional (opt + klik)
let myPhoneNumber: Int = phoneNumber ?? 6285700220033

print("Default Number:",myPhoneNumber.description)

phoneNumber = 1234
print(phoneNumber ?? 446)

phoneNumber = nil
print(phoneNumber ?? "No Value")

print("--------- /// ---------")

var userStatus: String? = nil

let usersStatus: String = userStatus ?? "Not Premium"
print("You status are", usersStatus.description)

userStatus = nil
print(userStatus ?? "Not Premium")

userStatus = "Silver"
print(userStatus ?? "Not Premium")

userStatus = "Gold"
print(userStatus ?? "Not Premium")

// -----------------  example ----------------- \\


// unwrapping using if-let

var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool {
    
    // check if there is a value in variabel "userIsPremium", THEN let constant "newValue" sama dengan nilai dari variabel "userIsPremium"
    if let newValue = userIsPremium {
        // disini kita punya akses ke "non-optional" value
        return newValue
        
    } else {
        return false
    }
    
}


// contoh #2
func checkIfUserIsPremium2() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

print(checkIfUserIsPremium2()) // hasilnya akan false, karena pada variabel "userIsPremium" tidak ada nilainya, alias "nil"

// contoh #3
/*
 Jika constant "userIsPremium"
 */
func checkIfUserIsPremium3() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// -------- Guard ------- \\\

// when a guard is a failure, enter the closure
func checkIfUserIsPremium4() -> Bool {
    
    // make sure there is a value in variabel "userIsPremium"
    // jika ada,THEN let "newValue" bernilai sama dengan variabel "userIsPremium"
    // ELSE (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false // jika tidak ada nilai di "userIsPremium", THEN closure ini di jalankan / return
    }
    
    // here we have acces to non-optional value
    return newValue
}
print(checkIfUserIsPremium4())

func checkIfUserIsPremium5() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}
print(checkIfUserIsPremium5())

/*
 Untuk unwrap optional, bisa menggunakan 3 cara. yaitu:
 1. Nil Coalescing
 2. If-let
 3. Guard
 */
