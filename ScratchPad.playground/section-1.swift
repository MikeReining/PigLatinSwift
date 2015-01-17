// Playground - noun: a place where people can play




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

createArrayOfWords(originalString)

func transformWordsInArray (array: [String]) -> String {
    var finalString: String = ""
    for word in array {
        finalString = finalString + " " + word
    }
    return finalString
}

transformWordsInArray(createArrayOfWords(originalString))