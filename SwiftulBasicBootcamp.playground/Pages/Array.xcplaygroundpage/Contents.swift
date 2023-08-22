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


// ######### ---------- Acces Item in Array ---------- ##########

// mengakses array
print("Isi dari Arrray ke-3 adalah \(animalsArray[2])")


// ######### ---------- Insert Item in between to Array ---------- ##########

// menyisipkan satu item array diantara items
animalsArray.insert("Fish", at: 2)
print(animalsArray)

// menyisipkan beberapa item pada index ke 3
animalsArray.insert(contentsOf: ["Bird","Koala" ], at: 3)
print(animalsArray)

for (index, items) in animalsArray.enumerated() {
    print("Index ke- \(index) adalah \(items)")
}


// ######### ---------- Remove Array ---------- ##########

// ["Elephant", "Lion", "Fish", "Bird", "Koala", "Chicken", "Pigeon", "Duck", "Cow"]
// menghapus item atau index ketiga dari "animalArray"
animalsArray.remove(at: 2)


//

var cityArray: [String] = ["Jakarta", "Bandung", "Semarang", "Surabaya"]
print(cityArray)

//for city in cityArray {
//    if cityArray.count < 3 {
//        print(cityArray)
//    }
//}

// ######### ---------- Array with custom types ---------- ##########

struct ProductModel {
    let title: String
    let price: Int
}

// dalam sebuah array, bisa terdapat lebih dari satu type data
// sebelum membuat array. buat dulu struct untuk menampung custom type data tsb
var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 25),
    ProductModel(title: "Product 2", price: 10),
    ProductModel(title: "Product 3", price: 25),
    ProductModel(title: "Product 4", price: 30)
]

print(myProducts[1])

// melakukan perulangan untuk menampilkan value dari Array "myProducts"
for (index, items) in myProducts.enumerated() {
    print("Index ke - \(index) adalah Nama Barang: \(items.title), Harga: \(items.price)")
}

