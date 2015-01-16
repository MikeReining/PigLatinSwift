// Playground - noun: a place where people can play

import Foundation

extension String {
    func stringByPigLatinization () {
    }
}

var testword: String = "start"
var stringArray = [String]()
var tempIndex = 0

// Create Array from String

// MARK: Functions

// STEP 1

func createStringArray() -> [String] {
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
        println(stringArray[0])
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
            if moveStringToEnd != "" {
                restOfStringStartsWith += string
                break
            }
        case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z":
            println("test")
            if restOfStringStartsWith == "" {
                moveStringToEnd += string
            } else {
            }
        default:
            println("other char")
        }
    }
    
    return (moveStringToEnd, restOfStringStartsWith)
}

if !firstStringIsAVowel() {
    grabInitialConstants()
}





// Function 3: find Index where word should be split

func splitWordAtIndex() -> (Int) {
    var index = 0
    for string in stringArray {
        if string != grabInitialConstants().restOfStringStartsWith {
            index += 1
        }
    }
    index
    return index
}
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





