// Playground - noun: a place where people can play




var originalString = "First Second Third"

// Turn original String into Array of Words

var arrayOfWords = split(originalString) {$0 == " "}
arrayOfWords.count
var newWordArray = [String]()
for word in arrayOfWords {
    newWordArray.append(word)
}
newWordArray

