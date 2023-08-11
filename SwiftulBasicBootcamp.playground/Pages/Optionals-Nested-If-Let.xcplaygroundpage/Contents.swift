import Foundation

var userIsNew: Bool? = false
var userDidCompleteOnboarding: Bool? = nil
var userFavoriteMovie: String? = nil


// function getUserStatus memiliki 3 parameter
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> String {
    
    if userIsNew && userDidCompleteOnboarding {
       
        return "true getUserStatus"
    }
    
    return "false get user"
}

// Di dalam function checkUserActivated, variabel "userIsNew" sudah di unwrap menjadi Bool. bukan lagi optionals
func checkUserActivated() -> String {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                // userFavoriteMovie == nil
                return "false 3"
            }
            
        } else {
            // userDidCompleteOnboarding == nil
            return "false 2"
        }
        
    } else {
        // userIsNew == nil
        return "Closure false"
    }
}

print(getUserStatus(userIsNew: true, userDidCompleteOnboarding: true, userFavoriteMovie: "AADC"))
print(checkUserActivated())
