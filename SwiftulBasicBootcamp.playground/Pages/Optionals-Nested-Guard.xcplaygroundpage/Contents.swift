import Foundation

var userIsNew: Bool? = false
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = "ABCD"


// function getUserStatus memiliki 3 parameter
func userStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> String {
    
    if userIsNew && userDidCompleteOnboarding {
       
        return "true UserStatus"
    }
    
    return "false user status"
}

// -------- nested Guard ------------ \\
func checkIfUserIsSigin() -> String {
    guard let userIsNew else {
        // userIsNew == nil
        return "false 1"
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return "false 2"
    }
    // userDidcompleteOnboarding == Bool
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return "false 3"
    }
    // userFavoriteMovie == Bool
    
    return userStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

print(checkIfUserIsSigin())
