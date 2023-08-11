import Foundation

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = true
var userFavoriteMovie: String? = "ABCD"


func checkIfUserIsSetup() -> Bool {
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // closure ini akan di jalankan, jika ketiga kondisi dibawah ini bernilai true/false (mempunyai nilai)
        // userIsNew == Bool AND
        // userDidCompleteOnboarding AND
        // userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    } else {
        // closure ini akan di jalankan, jika ketiga kondisi dibawah ini bernilai nil (tidak mempunyai nilai)
        // userIsNew == nil OR
        // userDidCompleteOnboardiing == nil OR
        // userFavoritMovie == nil
        return false
    }
}

// ----------- Guard ------------- \\

func checkIfUserIsSetup2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // closure ini akan di jalankan, jika ketiga kondisi dibawah ini bernilai nil (tidak mempunyai nilai)
        // userIsNew == nil OR
        // userDidCompleteOnboardiing == nil OR
        // userFavoritMovie == nil
        return false
    }
    
    return getUserStatus(
        // closure ini akan di jalankan, jika ketiga kondisi dibawah ini bernilai true/false (mempunyai nilai)
        // userIsNew == Bool AND
        // userDidCompleteOnboarding AND
        // userFavoriteMovie == String
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie)
}


// function getUserStatus memiliki 3 parameter
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    
    if userIsNew && userDidCompleteOnboarding {
       
        return true
    }
    
    return false
}

// if-let statement
print(checkIfUserIsSetup()) // hasilnya akan "false"
print(getUserStatus(userIsNew: true, userDidCompleteOnboarding: true, userFavoriteMovie: "AADC"))

// guard
print(checkIfUserIsSetup2())
