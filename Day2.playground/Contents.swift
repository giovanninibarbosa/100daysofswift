// 100 Days of Swift - Day 2
// Giovannini Barbosa

import UIKit

var str = "Hello, playground"


// Arrays : contains different types of data. ordered. can add more.

let ret = "Filipe Ret"
let djonga = "Djonga"
let lennon = "l7nnon"
let xama = "Xamã"

let poesia9 = [ret, djonga, lennon, xama]
poesia9[2]


//Sets : Unordered array and can't contain duplicates.

let colors = Set(["red", "blue", "green"])
let colors2 = Set(["red", "blue", "green", "red", "blue"])

if colors2.contains("pink") {
    print("Contains pink color")
} else {
    print("This set doesn't contain this word")
}


// Tuples : can't add/remove items because it's fixed size. can't change the types of items in a tuple. can access items in a tuple using numerical positions.

var name = (first: "Giovannini", last: "Barbosa")
name.0
name.last


// Arrays vs sets vs tuples.

let arrivedFirst = ["Jhon", "Paul", "Lennon"] // Array: keep order and can have duplicates.

let set = Set(["Apple", "Xiaomi", "Samsung"]) // Set: unordered and can't have duplicates.

let address = (house_number: 109, street: "Rua da Quitanda", city: "Diamantina") // Tuples: fixed values of fixed types inside them.


// Dictionaries : let us choose a "key" that identifies the item we want to add. Unordered.

let heights = [
    "Giovannini": 1.90,
    "Steve Jobs": 1.70
]

heights["Giovannini"]
heights["Paul"] // If don't exists returns a nil.


// Dictionary default values : You can provide the dictionary with a default value to use if we request a missing key.

let favoriteIceCream = [
    "Anna": "Chocolate",
    "Leticia": "Vanilla",
]

favoriteIceCream["Anna", default: "Unknown"]
favoriteIceCream["Ricardo", default: "Unknown"]


// Creating empty collections.

// Dictionary
var teams = [String: String]()
teams = ["Giovannini" : "23 years old"]

// Array
var results = [Int]()
results.append(9)
results.append(10)

// Set
var words = Set<String>()
var numbers = Set<Int>()

words = ["a", "b", "c", "d", "a", "b"]
numbers = [1, 2, 3, 1, 2, 3, 4]

// Creating Arrays and Dictionaries with similar syntax.
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

scores = ["Math" : 3]
scores = ["Portuguese" : 6]

results1.append(10)
results1.append(3)


// Enumerations.

let result = "Failure"
let result2 = "Failed"
let result3 = "Fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// Enum associated values.

enum Activity {
    case bored
    case talking(topic: String)
    case running(destination: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "covid-19 stats")

// Enum raw values.

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
