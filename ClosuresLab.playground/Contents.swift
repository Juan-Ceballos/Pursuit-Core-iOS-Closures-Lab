import UIKit

// Question One

// Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.


// Your function here
func applyKTimes(k : Int, closure : () -> ())  {
    for _ in 1...k  {
        closure()
    }
}

// Uncomment out the following lines to check your solution

var myVal = 0
applyKTimes(k: 5) {
    myVal += 1
}
assert(myVal == 5, "Expected myVal to be five, but was \(myVal)")


// Question Two

// Write a function called multiples(of:in) that takes in an array of Ints and returns all of the Ints that are a multiple of a given number n.  Use filter in your function.

// Your function here
func multiples(of : Int, arr : [Int]) -> [Int] {
    let sameMultiples = arr.filter {$0 % of == 0}
    return sameMultiples
}

// Uncomment out the following lines to check your solution

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
let expectedOutputTwo = [3, 6, 9, 3, 12]
let outputTwo = multiples(of: 3, arr: numbers)
assert(outputTwo == expectedOutputTwo, "Expected output to be \(expectedOutputTwo), but found \(outputTwo)")


// Question Three

// Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

// Your function here
func largestValue(arr : [Int]) -> Int {
    let largestVal = arr.reduce(0)  { num1,num2 in
        if num1 > num2 {
            return num1
        }
        else {return num2}
    }
    
    return largestVal

}

 //Uncomment out the following lines to check your solution

let moreNumbers = [4, 7, 1, 9, 6, 5, 6, 9]
let expectedOutputThree = 9
let outputThree = largestValue(arr: moreNumbers)
assert(outputThree == expectedOutputThree, "Expected output to be \(expectedOutputThree), but found \(outputThree)")


// Question Four

// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples of type (String, String) and returns an array of tuples sorted by last name.

// Your function here
func sortedNamesByLastName(tupBroni : [(String, String)]) -> [(String, String)]   {
    let sortByLast = tupBroni.sorted(by: {s1, s2 in return s2.1 > s1.1} )
    return sortByLast
}

/*
 reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
     return s1 > s2
 })
 //closures, closure expression syntax, docs.swift
 */

// Uncomment out the following lines to check your solution

let firstAndLastTuples = [
    ("Johann S.", "Bach"),
    ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
]

print(sortedNamesByLastName(tupBroni: firstAndLastTuples))

let expectedOutputFour = [
    ("Johann S.", "Bach"),
    ("Josquin","Des Prez"),
    ("Duke", "Ellington"),
    ("Scott","Joplin"),
    ("Claudio", "Monteverdi"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov")
]

let outputFour = sortedNamesByLastName(tupBroni: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


// Question Five

// Write a function called sumOfSquaresOfOddNumbers(in:) that returns the sum of the squares of all the odd numbers from an array of Ints.  Use filter, map and reduce in your function.

// Your function here
func sumOfSquaresOfOddNumbers(arrInts : [Int]) -> Int {
    let oddNumbers = arrInts.filter({$0 % 2 == 1})
    let squareOddNumbers = oddNumbers.map{$0 * $0}
    let sumOfWhatsLeft = squareOddNumbers.reduce(0, +)
    return sumOfWhatsLeft
}


// Uncomment out the following lines to check your solution

let evenMoreNumbers = [1, 2, 3, 4, 5, 6]
let expectedOutputFive = 35 // Explanation: 1 + 9 + 25 -> 35
let outputFive = sumOfSquaresOfOddNumbers(arrInts: evenMoreNumbers)
assert(outputFive == expectedOutputFive, "Expected output to be \(expectedOutputFive), but found \(outputFive)")

print(sumOfSquaresOfOddNumbers(arrInts: evenMoreNumbers))
