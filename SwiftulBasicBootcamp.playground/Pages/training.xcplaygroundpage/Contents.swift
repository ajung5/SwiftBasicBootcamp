import Foundation

// file training suka-suka


// ######### ---------- Loop  ---------- ##########

// Loop pada array
let cityArray: [String] = ["Jakarta", "Bandung", "Makassar"]

for item in cityArray {
    print(item)
}

print("")

// for Loop with where Clause
// loop pada array dengan menggunakan where clause
for cities in cityArray where cities != "Bandung" {
    print(cities)
}

var jumlahArray = cityArray.count
//print(jumlahArray)
print("")

// melakukan pengulangan dalam array dengan lebih dari satu parameter
for (index, items) in cityArray.enumerated() {
    print("Nilai dari Index = \(index) adalah \(items)")
}

