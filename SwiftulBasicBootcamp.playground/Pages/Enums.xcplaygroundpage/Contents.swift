import Foundation

// Enum is the same as Struct except we know all cases at runtime
// Struct we can configure with totally configure data

// ######### ---------- Enumerations ---------- ##########

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CarBrandOption {
    case ford, toyota, honda
    
    // Computed Property in enum
    // In addition to stored properties, classes, structures, and enumerations can define computed properties, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.
    //  property ".title" pada object "CarBrand" dapat diakses disini menggunakan cara "Computed Property"
    // "Computed Property" pada dasarnya adalah sebuah func yang di eksekusi setiap property ".title" dipanggil
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
        }
    }
}

var car1: CarModel = CarModel(brand: .ford, model: "Ranger Raptor")
print("Car Brand: \(car1.brand), Model: \(car1.model)")

var merkMobil: CarBrandOption = .toyota
var car2 = CarModel(brand: merkMobil, model: "GR Yaris")
print("Merk: \(merkMobil.title), Model: \(car2.model) ")
