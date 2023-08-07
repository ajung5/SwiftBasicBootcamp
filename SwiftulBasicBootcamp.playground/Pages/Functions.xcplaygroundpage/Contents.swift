import Foundation

// func => penamaan function
func firstFunction () {
    print("Ini adalah fungsi pertama")
}

func secondFunction() {
    print("Ini adalah fungsi kedua")
}

// memanggil function
// memanggil function bisa juga dilakukan di dalam function yg lain
firstFunction()
secondFunction()


// return value
func getUsername() -> String {
    let userName: String = "John"
    return userName
}

let name = getUsername()
print(name)


//---------------------- Function Parameter ---------------------- \\
// memanggil function lain di dalam sebuah function
func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated) // function "checkUserStatus" di panggil di dalam function "showFirstScreen"
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW LOGIN SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if  didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}

// memanggil function
showFirstScreen()

// another example
func isUserPremium() {
    var subscription: Bool = true
    var expiredCount: Int = 12
    let status = checkUserStatus(userSubscription: subscription, userExpiredDate: expiredCount)
    
    if status == true {
        print("User Has Premium Account")
    } else {
        print("Subcribe Please")
    }

}

func checkUserStatus(userSubscription: Bool, userExpiredDate: Int) -> Bool {
    if userSubscription && (userExpiredDate != 0) {
        return true
    } else {
        return false
    }
}

isUserPremium()


// ---------------------- control flow ---------------------- \\
// void adalah ketika sebuah function tidak me-return value apapun
func voidExample() {
    print("EXECUTE")
}
voidExample()


// jika ditambahkan "-> Tipe Data" maka harus me-return value

func moviesCategory() -> String {
    var title: String = "Avengers"
    
    // if title is equal to "Avengers"
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}
print(moviesCategory())

// ---------------------- Guard statement ---------------------- \\
func movieCategories() {
    var judul: String = "Batman"
    
    // make sure judul == batman
    guard judul == "Batman" else {
        // jika false. kode ini di jalankan
        print("Bukan film DC Comic")
        return
    }
    
    // jika true, kode ini dijalankan
    print("Film DC Comic")
}

movieCategories()

// ---------------------- Calculated variables ---------------------- \\

let number1 = 4
let number2 = 3

func calculatedNumbers() -> Int {
    return number1 + number2
}

func calculatedNumbers2(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result = calculatedNumbers()
let result2 = calculatedNumbers2(value1: number1, value2: number2)


// calculated variables are basically functions
// generally good for when you dont need to pass data into the function
var calculatedNumber: Int {
    return number1 + number2
}
