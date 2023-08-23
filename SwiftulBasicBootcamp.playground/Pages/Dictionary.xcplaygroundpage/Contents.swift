import Foundation

// key : value
var userIsPremium: [String : Bool] = [
    "User 1" : true,
    "User 2" : false,
    "User 3" : false
]

// mengakses dictionary, kita panggil "key" nya
let item = userIsPremium["User 1"]
