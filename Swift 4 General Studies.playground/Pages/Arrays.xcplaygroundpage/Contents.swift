/*:
 
 [Table of Contents](Table%20of%20Contents) - [Previous](@previous) - [Next](@next) 
 
 ## Arrays
 > An _array_ stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.
 
 [Reference](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105)
*/
// full declaration syntax
let myEmptyArrayOfStringFullSyntax = Array<String>()

// shorthand declaration syntax
let myEmptyArrayOfString = [String]()

// declartion with default values
let myArrayWithDefaultValues = Array(repeating: 1, count: 3)

// adding arrays (possible when they have the same type)
let myArrayWithIntegers = Array(repeating: 2, count: 3)
var myNewArray = myArrayWithIntegers + myArrayWithDefaultValues

// retrieve a value from an array by using subscript syntax
let firstItem = myNewArray[0]

// changing an item using subscript syntax
myNewArray[2] = 100

// now myNewArray has the number 100 in its position 2
myNewArray[2]

// declaring an array Literal
var arrayLiteral: [String] = ["Eggs", "Milk", "Beef"]

// chaging a range
arrayLiteral[1...2] = ["Beans", "Bread", "Garlic"]
arrayLiteral

arrayLiteral.insert("Banana", at: 1)

var arrayAddingOneByOne = [Int]()
arrayAddingOneByOne.insert(2, at: 0)
arrayAddingOneByOne.insert(3, at: 1)
arrayAddingOneByOne.insert(4, at: 2)

// removing an item ( the item removed will be returned )
arrayLiteral.remove(at: 0)
arrayLiteral.removeLast()
arrayLiteral

// iterating over an array
for item in arrayLiteral {
    print(item)
}

// iterating and accessing the items position using enumarated() method
for (index, item) in arrayLiteral.enumerated() {
    print("position: \(index), item:\(item)")
}

let arr = [1,3,5,4,6,9,13]
let arrayFiltered = arr.filter { (n) -> Bool in
    return n % 2 == 1
}
print("Array Filtered: \(arrayFiltered)")

// reduce operation
let arrayReduce = [1, 2, 3, 4, 10, 11]
var v = arrayReduce.reduce(0, { x, y in
    x + y
})
print("Array Reduced: \(v)")

v = arrayReduce.reduce(0, { $0 + $1 })
print("Array Reduced: \(v)")

