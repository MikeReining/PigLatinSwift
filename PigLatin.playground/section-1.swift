// Playground - noun: a place where people can play

// PIG LATINIZATION NOTES
// - currently works only for single words


import Foundation

var testword: String = "Kale"

var lowercaseString = testword.lowercaseString


// Create Array from String

// MARK: Functions

// STEP 1

func createStringArray() -> [String] {
    var stringArray = [String]()
    var lowercaseString = testword.lowercaseString
    for char in lowercaseString {
        var charToString = String(char)
        stringArray.append(charToString)
    }
    stringArray
    return stringArray
}

func createOriginalStringArray() -> [String] {
    var stringArray = [String]()
    for char in testword {
        var charToString = String(char)
        stringArray.append(charToString)
    }
    stringArray
    return stringArray
}

createStringArray()


// STEP 2 Function: See if first string is a vowel
func firstStringIsAVowel() -> Bool {
    switch createStringArray()[0] {
    case "a","e","i","o","u":
        return true
    default:
        return false
    }
}

firstStringIsAVowel()


// STEP 2 Function: extract constants
func grabInitialConstants() -> (initialConstants: String, restOfStringStartsWith: String) {
    var restOfStringStartsWith: String = ""
    var initialConstants = ""
    for string in createStringArray() {
        switch string {
        case "a","e","i","o","u":
            if initialConstants != "" && restOfStringStartsWith == "" {
                restOfStringStartsWith += string
                break
            }
        case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z":
            if restOfStringStartsWith == "" {
                initialConstants += string
            } else {
            }
        default:
            println("\(string)")
        }
    }
    return (initialConstants, restOfStringStartsWith)
}

// Step 3 Function: Count Elements of Initial Constant

func countElementsOfInitialConstancts(initialConstant: String) -> Int {
        return countElements(initialConstant)
}

countElementsOfInitialConstancts(grabInitialConstants().initialConstants)


let firstStringOfRest = grabInitialConstants().restOfStringStartsWith


// Function 4: find Index where word should be split

//func splitWordAtIndex() -> (Int) {
//    var index = 0
//    for string in createStringArray() {
//        if string == grabInitialConstants().restOfStringStartsWith {
//                break
//        }
//        index += 1
//    }
//    index
//    return index
//}

// Function 3: Better version

func findStringIndex(array: [String], valueToFind: String) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

findStringIndex(createStringArray(), grabInitialConstants().restOfStringStartsWith)!

createStringArray()

func buildStartOfNewWord(#startAtIndex: Int, #myArrayCount: Int, #array: [String]) -> String {
    var startOfNewWord: String = ""
    var endOfIndex = array.count - 1
    for index in startAtIndex...endOfIndex {
        println("\(array[index])")
        startOfNewWord = startOfNewWord + array[index]
    }
    return startOfNewWord
}

func buildEndOfNewWord(#initialConstantsCount: Int, stringArray: [String]) -> String {
    var addConstantsToEndOfWord: String = ""
    var endOfIndex = initialConstantsCount - 1
    for index in 0...endOfIndex {
        addConstantsToEndOfWord = addConstantsToEndOfWord + stringArray[index]
    }
    return addConstantsToEndOfWord
}


// MARK: FINAL Function - Assemble Pig Latin Word

extension String {
    func stringByPigLatinization () {
    }
}

if firstStringIsAVowel() {
    println("true")
    var addAyToEnd = "ay"
    var finalString = testword + addAyToEnd
} else {
    let initialConstants = grabInitialConstants().initialConstants
    let index = findStringIndex(createStringArray(), grabInitialConstants().restOfStringStartsWith)
    let array = createOriginalStringArray()
    let newWordStartsWith = buildStartOfNewWord(startAtIndex: index!, myArrayCount: array.count, array: array)
    let initialConstantsCount = countElementsOfInitialConstancts(initialConstants)
    let endOfNewWord = buildEndOfNewWord(initialConstantsCount: initialConstantsCount, createOriginalStringArray())
    
    let finalWord = newWordStartsWith + endOfNewWord + "ay"


}


createStringArray()



//
//createStringArray()
//firstStringIsAVowel()
//if !firstStringIsAVowel() {
//    // Call Function 2
//    grabInitialConstants()
//    // Call Function 3
//    splitWordAtIndex()
//    
//    // Assemble word
////    testword.substringWithRange(splitWordAtIndex())
//    
//}
//

//testword.substringWithRange(<#aRange: Range<String.Index>#>)





