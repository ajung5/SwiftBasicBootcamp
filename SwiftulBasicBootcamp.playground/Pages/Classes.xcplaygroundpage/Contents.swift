import Foundation

// Classes are slow
// Classes are stored in the heap (memory)
// Objects in the heap are reference types
// Reference types point to an object in memory and update the object in memory
// class has no initializer

class ScreenViewModel {
    let title: String
    private (set) var showButton: Bool
    
    // same init as a struct, except struct have implicit init
    init(judul: String, tampilkanTombol: Bool) {
        // "self" referring to class itself
        self.title = judul
        self.showButton = tampilkanTombol
    }
    
    deinit {
        // Runs as the object is being removed from memory
        // Structs do NOT have deinit.
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton (newValue: Bool) {
        showButton = newValue
    }

}

// Notice that we are using a "let", because:
// the object itself is noot changing
// the data inside the oobject is changing

let viewModel: ScreenViewModel = ScreenViewModel(judul: "Screen 1", tampilkanTombol: true)
// viewModel.showButton = true // tidak mengakses property "showButton" diluar class, karena di set ke private
print(viewModel.showButton)

