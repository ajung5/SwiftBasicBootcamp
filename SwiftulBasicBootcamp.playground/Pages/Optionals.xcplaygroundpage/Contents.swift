import Foundation

// An Optional is a type on its own, actually one of Swift 4’s new super-powered enums. It has two possible values, None and Some(T), where T is an associated value of the correct data type available in Swift 4.

// There is always a value and it is a Boolean
let isActivated: Bool = true

// we don't know if there is a vakue, but if there is, it is a boolean
// Optional values are: true, false or nil
var anotherActivated: Bool? = nil

//print(anotherActivated)
anotherActivated = true

// nil coalescing operator (??)
let newValue: Bool? = anotherActivated

// the value of anotherActivated (if there is one), otherwise false
let newValue2: Bool = anotherActivated ?? false // false adalah default value dari optional anotherActivated
print("New Value 2: \(newValue2.description)")


var myString: String? = "Hello World"
print(myString ?? "There is no value")

myString = "New Text"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")


// -----------------  example ----------------- \\
