// Playground - noun: a place where people can play

// PIG LATINIZATION NOTES
// - currently works only for single words




import Foundation

extension String {
    func stringByPigLatinization () {
    }
}

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
    var moveStringToEnd = ""
    for string in createStringArray() {
        switch string {
        case "a","e","i","o","u":
            if moveStringToEnd != "" && restOfStringStartsWith == "" {
                restOfStringStartsWith += string
                break
            }
        case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z":
            if restOfStringStartsWith == "" {
                moveStringToEnd += string
            } else {
            }
        default:
            println("\(string)")
        }
    }
    
    return (moveStringToEnd, restOfStringStartsWith)
}

if !firstStringIsAVowel() {
    grabInitialConstants()
}

let firstStringOfRest = grabInitialConstants().restOfStringStartsWith


// Function 3: find Index where word should be split

func splitWordAtIndex() -> (Int) {
    var index = 0
    for string in createStringArray() {
        if string == grabInitialConstants().restOfStringStartsWith {
                break
        }
        index += 1
    }
    index
    return index
}

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

splitWordAtIndex()
createStringArray()



// Assemble Words
if firstStringIsAVowel() {
    println("true")
    var addAyToEnd = "ay"
    var finalString = testword + addAyToEnd
} else {
    grabInitialConstants().initialConstants
    splitWordAtIndex()
    
    
    
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





