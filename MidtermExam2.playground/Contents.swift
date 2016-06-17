//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sortArray(array1:[Int],array2:[Int]) ->[Int]{
    var array3 = array1 + array2
    for i in 0...array3.count-2 {
        for o in i+1...array3.count-1 {
        if array3[i]>array3[o]{
            array3.insert(array3.removeAtIndex(o), atIndex: i)
            print(array3)
            }
        }
    }
    var array4 = [array3[0]]
    for a in 0..<array3.count-1{
        if array3[a] != array3[a+1]{
            array4.append(array3[a+1])
        }
    }

    
        
    
    
    return array4
}

sortArray([1,3,7,3], array2: [2,4,7])