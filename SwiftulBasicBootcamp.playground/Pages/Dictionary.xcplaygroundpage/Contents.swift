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


// ######### ---------- Add and Remove item ---------- ##########

// # Add Item in Dictionary
// tinggal panggil saja nama dictionary nya, terus isi [key] = [value] nya
testScores ["CX60"] = 75
testScores ["E63"] = 88
print(testScores)

// # Remove item in Dictionary
// menghapus value dari key
testScores.removeValue(forKey: "E63")
print(testScores)


// ######### ---------- Array vs Dictionary ---------- ##########
/*
 #Array
 - untuk membuat data berdasarkan index
 
 # Dictionary
 - Jika membutuhkan data yang memiliki unik id
 - dictionary lebih cepat load data daripada Array
 
*/

// ######### ---------- Dictionary with custome type ---------- ##########

struct PostModel {
    let id: String
    let titel: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "STR332", titel: "Post 1", likeCount: 3), // index 0
    PostModel(id: "CX90", titel: "Post 2", likeCount: 31), // index 1
    PostModel(id: "GT63", titel: "Post 3", likeCount: 13), // index 2
    PostModel(id: "GTR35", titel: "Post 4", likeCount: 53) // index 3
]

// mengecek apakah ada data
if postArray.indices.contains(2) {
    let item = postArray[2]
    print(item)
}

var postDict: [String : PostModel] = [
    "STR332" : PostModel(id: "STR332", titel: "Post 1", likeCount: 3),
    "CX90"   : PostModel(id: "CX90", titel: "Post 2", likeCount: 31),
    "GT63"   : PostModel(id: "GT63", titel: "Post 3", likeCount: 13),
    "GTR35"  : PostModel(id: "GTR35", titel: "Post 4", likeCount: 53)
]

let newItem = postDict["GTR35"]
print(newItem ?? "Data tidak ditemukan") // jika tidak ada key pada newItem, maka default value nya adalah nil (bebas sih mau apa aja default valuenya)
