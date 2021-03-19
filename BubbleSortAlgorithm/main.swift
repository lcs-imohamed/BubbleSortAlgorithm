//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Mohamed, Ilana on 2021-03-19.
//

import Foundation

//Pause to allow the user to see output
func waitForInput() {
    print("Press RETURN to continue")
    _ = readLine()
}

//Create an empty array
var dataSet: [Int] = []

//populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

//Print the unsorted array
print("Unsorted")
print(dataSet)
waitForInput()

//Sort the array
var sorted = 0

//Loop through the array "n"




//(however many times there are elements in the array)
for i in 0..<dataSet.count - sorted - 1 {
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        //What comparison is this?
        print("Pass\(i + 1), comparison\(j + 1)...")

        //compare the left value to the right value
        if dataSet[j] > dataSet[j + 1] {
            
            // Swap the values when left value is greater than right value
            let temporaryValue = dataSet[j]     //Set aside the left value
            dataSet[j] = dataSet [j + 1]        //Replace left with right
            dataSet[j + 1] = temporaryValue     //Replace right with temporary value
            
        }
        
    }
    
    sorted += 1
    
    //Print the array after "n" passes
    print("Array after pass\(i + 1)")
    print(dataSet)
    waitForInput()

}




//Print the sorted array
print("sorted")
print(dataSet)
waitForInput()
