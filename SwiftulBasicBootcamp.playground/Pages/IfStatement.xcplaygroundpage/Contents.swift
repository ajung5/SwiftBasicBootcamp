import Foundation

var isUserPremium = false

if isUserPremium == true {
    print("1- User is Premium")
}

if isUserPremium {
    print("2- User is Premium")
}

if !isUserPremium == true {
    print("3- User is NOT Premium")
}


// if-else statement
var isUserActive = false

if isUserActive {
    print("User Sedang Aktif")
} else {
    print("User sedang Tidak Aktif")
}


// if-else-if statement
var nilai = 80

if (nilai >= 90) {
    print("Excelent")
} else if (nilai >= 80) {
    print("Great")
} else if (nilai >= 70) {
    print("Good")
} else {
    print("Try Again")
}

// nested if-else statement
var a = 100
var b = 200
var c = 150


print("Nilai A:",a,", Nilai B:",b,", NilaiC:",c)
// outer if statement
if (a > b) {
    // inner if statement
    if (a > c) {
        //print statement 1
        print("Nilai A lebih besar")
    } else { // inner else
        // print statement 2
        print("Nilai C lebih besar")
    }
} else { // outer else
    // inner if statement
    if (b > c) {
        print("Nilai B lebih besar")
    } else {
        print("Nilai C Lebih besar")
    }
}


var likeCount = 20
var commentCount = 00
var viewCount = 50


// AND
if likeCount > 3 && commentCount > 0 {
    print("Post memiliki lebih dari 3 like DAN memiliki komentar ")
} else {
    print("Post kurang dari 3 yang suka ATAU belum ada komentar")
}


// OR
if likeCount > 10 || viewCount > 0 {
    print("Post memiliki lebih dari 10 like ATAU memiliki komentar ")
} else {
    print("Post tidak memiliki LIKE lebih dari 3 like ATAU memiliki komentar ")
}
