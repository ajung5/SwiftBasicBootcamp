import Foundation

// key : value
var userIsPremium: [String : Bool] = [
    "User 1" : true,
    "User 2" : false,
    "User 3" : false
]

// mengakses dictionary, kita panggil "key" nya
let item = userIsPremium["User 1"]

// dictionary adalah type safe
// karena var/let pada saat memanggil dictionary adalah "optional"
let item2 = userIsPremium["User 4"]  // output: nil, value "User 4" tidak ada dalam data.


// ######### ---------- Dictionary do not have index---------- ##########

var zipCode: [Int : String] = [
    41261 : "Purwadadi",
    0     : "Tidak Ada",
    41252 : "Pagaden Barat"
]

let item3 = zipCode[2] // output: nil, karena dalam pemanggilan value dictionary bukan berdasarkan index


