import Foundation

for item in 1...5 {
    print(item)
}

// ######### ---------- Loop in Array ---------- ##########
let capitalCity: [String] = ["Jakarta", "Tokyo", "Kuala Lumpur", "Jeddah", "Cape Town", "Berlin"]

// memanggil array dengan loop
for city in capitalCity {
    print(city)
}

// ######### ---------- checking data in Loop ---------- ##########

struct LessonModel {
    let titel: String
    let isFavorite: Bool
}

let allLesson = [
    LessonModel(titel: "Lesson 1", isFavorite: false),
    LessonModel(titel: "Lesson 2", isFavorite: true),
    LessonModel(titel: "Lesson 3", isFavorite: false),
    LessonModel(titel: "Lesson 4", isFavorite: false),
    LessonModel(titel: "Lesson 5", isFavorite: true),
    LessonModel(titel: "Lesson 6", isFavorite: false)
]

var favoriteLesson: [LessonModel] = []

for lesson in allLesson {
    if lesson.isFavorite {
        favoriteLesson.append(lesson)
//        for item in favoriteLesson {
//            print(item)
//        }
    }
}
print(favoriteLesson)

// ######### ---------- Enumerated array ---------- ##########

for (index, lesson) in allLesson.enumerated() {
    print("Index ke - \(index) adalah \(lesson.titel), isFavorite \(lesson.isFavorite)")
}

// ######### ---------- Control Flow (break & Continue) ---------- ##########

let monthArray: [String] = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
]

// # break
// jika kondisi sudah terpenuhi, maka looping akan di hentikan

for (index, month) in monthArray.enumerated() {
    if index == 2 {
        break
    }
    print(index, month)
}

// # continue
// jika kondisi sudah terpenuhi, maka akan melewati
for (x, y) in monthArray.enumerated() {
    if x == 2 {
        continue
    }
    print(x, y)
}
