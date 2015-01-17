// Playground - noun: a place where people can play


var str = "Hello, playground"

var myArray = ["a","b","c","d"]
var index = 1


func findStringIndex(array: [String], valueToFind: String) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

findStringIndex(myArray, "b")!


func buildWord(startAtIndex: Int, myArrayCount: Int, array: [String]) -> String {
    var newWord: String = ""
    for index in startAtIndex...myArrayCount {
        println("\(array[index])")
        newWord = newWord + array[index]
        }
    return newWord
}

buildWord(2, 3, myArray)

