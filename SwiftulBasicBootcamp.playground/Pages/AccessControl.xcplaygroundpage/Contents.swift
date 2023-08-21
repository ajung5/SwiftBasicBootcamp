import Foundation

/*
 Rule of Thumb:
 we want everything to be as private as possible
 this makes your code easier to read/debug and is good coding practice

 */
 

// Buat struct "MovieModel"
struct MovieModel {
    let title: String
    var genre: MovieGenre
    private (set) var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    func updateMovieGenre(newValue: MovieGenre) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: isFavorite)
    }
    
    // cara kedua untuk mengupdate isFavorite value
    // "newValue" dijadikan sebagai parameter
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
    
    mutating func updateMovieGenre2(newGenre: MovieGenre) {
        genre = newGenre
    }
}

// buat enum untuk genre film
enum MovieGenre  {
    case action, comedy, horror, drama
}

// buat class MovieManager
class MovieManager {
    
    // public
    // private, tidak bisa melakukan get/set diluar class.
    
    var movie1 = MovieModel(title: "Spider-Man", genre: .action, isFavorite: true)
    
    var movie2 = MovieModel(title: "AADC", genre: .drama, isFavorite: true)
    
    // movie3 tidak akan bisa di akses diluar class, karena sudah di set menjadi private
    private var movie3 = MovieModel(title: "Insidous", genre: .horror, isFavorite: false)
    
    // read is public, but set is private
    // artinya, kita bisa mengakses var movie4, tapi tidak bisa mengupdate/ubah value dari movie4
    private (set) var movie4 = MovieModel(title: "Warkop", genre: .comedy, isFavorite: false)
    
    // var movie4 bisa di akses/diubah valuenya hanya di dalam class MovieManager
    func updateMovieStatus(isFavorite: Bool) {
        movie4.updateFavoriteStatus2(newValue: isFavorite)
    }
    
    func updateGenre(genre: MovieGenre) {
        movie4.updateMovieGenre2(newGenre: genre)
    }
}

// membuat const "manager" untuk memanggil class "MovieManager()"
let manager = MovieManager()
print(manager)

// mengubah nilai isFavorite pada movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: false)
print(manager.movie1)

// mengubah nilai isFavorite pada movie2 menggunakan cara kedua
manager.movie2.updateFavoriteStatus2(newValue: false)
print(manager.movie2)

// 'movie3' is inaccessible due to 'private' protection level
// manager.movie3

print(manager.movie4)

// sekarang movie4 bisa diupdate, karena telah dibuatkan func di dalam Class MovieManager untuk update value isFavorite
manager.updateMovieStatus(isFavorite: true)
print(manager.movie4.isFavorite)


// ######### ---------- SUMMARY---------- ##########

// Version 1
// we can GET and SET the value from outside the object
// "too public" not good in coding
manager.movie1.updateMovieGenre2(newGenre: .drama)
print(manager.movie1)


// version 2
// we can't GET and SET the value from outside the object
// "we cannot acces"
// "'movie3' is inaccessible due to 'private' protection level"
//let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: false)

// version 3
// we can GET the value form outside the objects, but we can't SET the Value from outside the object.
// "best practice"
let movie4 = manager.movie4
manager.updateGenre(genre: .action)
print(manager.movie4)

// Note: private & public are by far the most common but there are many others

// contoh penggunaan control acces:
// open
// public
// internal
// fileprivate
// private
