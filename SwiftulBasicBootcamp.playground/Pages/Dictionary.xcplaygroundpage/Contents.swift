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

let item3 = zipCode[2] // output: nil, karena dalam pemanggilan value dictionary bukan berdasarkan index, tapi berdasarkan key


// ######### ---------- Dictionary keys must be unique ---------- ##########

// dalam Dictionary, key harus bersifat unik. jadi tidak boleh ada duplikat key, kalo duplikat value boleh

var testScores: [String : Int] = [
    "KD01" : 80,
    "KD02" : 75,
   // "KD01" : 85, // Dictionary literal of type '[String : Int]' has duplicate entries for string literal key 'KD01'
    "KD03" : 80 // memiliki duplikat value, boleh
]

let score = testScores["KD01"]
