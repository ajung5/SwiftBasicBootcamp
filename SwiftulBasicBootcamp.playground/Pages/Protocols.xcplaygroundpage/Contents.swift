import Foundation

// Protocol is just a list rule, requirement that an object has to follow.


// karena object EmployeeModel mentaati rule ke EmployeeHasAName, jadi haruus mengikuti rule yang ada di sana
struct EmployeeModel: EmployeeHasAName {
    let title: String
    let name: String
}

protocol EmployeeHasAName {
    let name: String
}

