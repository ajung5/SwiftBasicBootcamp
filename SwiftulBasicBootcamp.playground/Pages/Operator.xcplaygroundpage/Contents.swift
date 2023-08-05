import Foundation


var likeCount: Double = 20
var commentCount: Double = 4
var viewCount: Double = 3

// penjumlahan
// likeCount = likeCount + 3
// likeCount += 3

// pengurangan
//likeCount = likeCount - 5
//likeCount += 7

// perkalian
//likeCount = likeCount * 2
//likeCount *= 3

// pembagian
//likeCount = likeCount / 4
//likeCount /= 2

// Order of Operations
//likeCount = likeCount - 2 * 3;
//viewCount = (viewCount + 6) * 3

var nilaiA = 40
var nilaiB = 69
var nilaiC = 80
var average = (nilaiA + nilaiB + nilaiC) / 3

if nilaiA == 55 {
    print("Selamat anda lulus")
} else {
    print("Anda Tidak Lulus")
}

if nilaiB != 55 {
    print("Selamat anda diterima")
} else {
    print("anda gagal")
}

if average > 60 {
    print("Good, nilai rata-rata anda",average)
} else {
    print("Try Again")
}

if nilaiA >= 60 {
    print("Nilai A >= 60")
}

if (nilaiA > 50 ) && (nilaiB > 70) {
    print("Nilai A anda:",nilaiA, "dan Nilai B anda:",nilaiB)
} else {
    print("Coba lagi")
}
