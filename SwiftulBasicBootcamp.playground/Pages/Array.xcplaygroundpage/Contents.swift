import Foundation

// Array, Sets
// let namaArray: [tipeData] = [isiArray]


// cara penulisan Array
// # 1
let fruits: [String] = ["Banana", "Apple", "Orange"]

// # 2
let toyota: String = "Toyota"
let honda: String = "Honda"
let mercedes: String = "Mercedes-Benz"

let cars: [String] = [toyota, honda, mercedes]

// # 3
// generic type <>
let cars2: Array<String> = [toyota, honda, mercedes]
print(cars2)


// ######### ---------- Count Array ---------- ##########

// menghitung jumlah array
let count = fruits.count


// ######### ---------- First and Last Array ---------- ##########
// mengambil item pertama pada array "fruits"
let  firstItem = fruits.first

// mengambil item terakhir pada array "fruits"
let lastItem  = fruits.last


// ######### ---------- Add Item to Array ---------- ##########
// jika ingin menambah/hapus array, harus var. jangan let
var animalsArray: [String] = ["Elephant", "Lion"]

// menambahkan item ke dalam array

// cara ini ga biasa digunakan untuk menambahkan item ke array
// ada cara lain yaitu dengan menggunakan "Append"
// # 1
// animalsArray = animalsArray + ["Horse"]
//animalsArray.count

// # 2 (append)
// menambahkan item ke dalam array menggunakan append hanya single/ satu-satu
animalsArray.append("Chicken")
animalsArray.append("Pigeon")

// menambahkan item ke dalam array menggunakan append(contentsOf:[]) / menambahakan beberapa item ke dalam existing array
animalsArray.append(contentsOf: ["Duck", "Cow"])
print(animalsArray)



