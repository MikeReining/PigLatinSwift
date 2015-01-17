// Playground - noun: a place where people can play

// PIG LATINIZATION NOTES
// - currently works only for single words


import Foundation

// MARK: INPUT STRING

var transformWord: String = "Kale"

var originalString = "First Second Third"

// Turn original String into Array of Words

func createArrayOfWords (string: String) -> [String] {
    
    var arrayOfWords = split(string) {$0 == " "}
    arrayOfWords.count
    var newWordArray = [String]()
    for word in arrayOfWords {
        newWordArray.append(word)
    }
    return newWordArray
}


// MARK: Pig Latination Functions

// STEP 1

func createStringArrayFromWord(word: String) -> [String] {
    var stringArray = [String]()
    var lowercaseString = word.lowercaseString
    for char in lowercaseString {
        var charToString = String(char)
        stringArray.append(charToString)
    }
    stringArray
    return stringArray
}

func createOriginalStringArrayFromWord(word: String) -> [String] {
    var stringArray = [String]()
    for char in word {
        var charToString = String(char)
        stringArray.append(charToString)
    }
    stringArray
    return stringArray
}



// STEP 2 Function: See if first string is a vowel
func firstStringIsAVowel(word:String) -> Bool {
    switch createStringArrayFromWord(word)[0] {
    case "a","e","i","o","u":
        return true
    default:
        return false
    }
}



// STEP 2 Function: extract constants
func grabInitialConstants(word: String) -> (initialConstants: String, restOfStringStartsWith: String) {
    var restOfStringStartsWith: String = ""
    var initialConstants = ""
    for string in createStringArrayFromWord(word) {
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



// Function 3: Better version

func findStringIndex(array: [String], valueToFind: String) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


func buildStartOfNewWord(#startAtIndex: Int, #myArrayCount: Int, #array: [String]) -> String {
    var startOfNewWord: String = ""
    var endOfIndex = array.count - 1
    for index in startAtIndex...endOfIndex {
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

// MARK: Final Transform Word Function for Single Words

func transformWord(word: String) -> String {
    var finalString = ""
    if firstStringIsAVowel(word) {
        println("true")
        var addAyToEnd = "ay"
        var finalString = word + addAyToEnd
        return finalString
        
    } else {
        let initialConstants = grabInitialConstants(word).initialConstants
        let index = findStringIndex(createStringArrayFromWord(word), grabInitialConstants(word).restOfStringStartsWith)
        let array = createOriginalStringArrayFromWord(word)
        let newWordStartsWith = buildStartOfNewWord(startAtIndex: index!, myArrayCount: array.count, array: array)
        let initialConstantsCount = countElementsOfInitialConstancts(initialConstants)
        let endOfNewWord = buildEndOfNewWord(initialConstantsCount: initialConstantsCount, createOriginalStringArrayFromWord(word))
        finalString = newWordStartsWith + endOfNewWord + "ay"
        return finalString
    }
}


func transformWordsInArray (array: [String]) -> String {
    var transformedWordsArray = [String]()
    for word in array {
        var transformedWord = transformWord(word)
        transformedWordsArray.append(transformedWord)
    }
    var finalString: String = ""
    for word in transformedWordsArray {
        finalString = finalString + " " + word
    }
    return finalString
}


// MARK: FINAL String Class Extension Assemble Pig Latin Word

extension String {
    func stringByPigLatinization () -> String {
        var array = createArrayOfWords(self)

        return  transformWordsInArray(array)
    }
}

// MARK: TEST CASES - see it working for single words and strings with multiple words

var string = "Kale Chips"
string.stringByPigLatinization()


transformWord.stringByPigLatinization()

var randomstring = "random string"

randomstring.stringByPigLatinization()

var superString = "What about this very long string?"

superString.stringByPigLatinization()





