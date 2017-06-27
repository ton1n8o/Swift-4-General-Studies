/*:
 # Swift Studies
 
 ## Arrays
 > An _array_ stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.
 
 [Language Guide reference](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105)
*/
// full declaration syntax
let myEmptyArrayOfStringFullSyntax = Array<String>()

// shorthand declaration syntax
let myEmptyArrayOfString = [String]()

// declartion with default values
let myArrayWithDefaultValues = Array(repeating: 1, count: 3)

// adding arrays (possible when they have the same type)
let myArrayWithIntegers = Array(repeating: 2, count: 3)
let myNewArray = myArrayWithIntegers + myArrayWithDefaultValues

// declaring an array Literal
var arrayLiteral: [String] = ["Eggs", "Milk", "Beef"]

// chaging a range
arrayLiteral[1...2] = ["Beans", "Bread", "Garlic"]
arrayLiteral

arrayLiteral.insert("Banana", at: 1)

// removing an item ( the item removed will be returned )
arrayLiteral.remove(at: 0)
arrayLiteral.removeLast()
arrayLiteral

// iterating over an array
for item in arrayLiteral {
    print(item)
}
