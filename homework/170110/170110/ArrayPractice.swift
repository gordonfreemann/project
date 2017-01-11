//
//  ArrayPractice.swift
//  170110
//
//  Created by jungwan jin on 2017. 1. 10..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

struct ArrayPractice
{
    func printArray(array : Array<Array<Int>>)
    {
        for innerArray in array
        {
            for item in innerArray
            {
                print(item, terminator:" ")
            }
            print()
        }
    }
    func tempArray(lines:Int) -> Array<Array<Int>>
    {
        var resultArray = Array<Array<Int>>()
        for _ in 1...lines
        {
            var tempArray = Array<Int>()
            for xLoop in 1...lines
            {
                tempArray.append(xLoop)
            }
            
            resultArray.append(tempArray)
        }
        return resultArray
    }
    func fillArray() -> Array<Array<Int>>
    {
        var ResultArray = Array<Array<Int>>()
        var index = 1
        for y in 1...5
        {
            var tempArray = Array<Int>()
            for _ in 1...y
            {
                tempArray.append(index)
                index += 1
            }
            ResultArray.append(tempArray)
        }
        return ResultArray

    }
    
    func FillArray(count:Int) -> Array<Array<Int>>
    {
        var ResultArray = Array<Array<Int>>()
        for Y in 1...count
        {
            var tempArray = Array<Int>()
            for X in 1...Y
            {
                tempArray.append(X*2-1)
            }
            ResultArray.append(tempArray)
        }
        return ResultArray
    }
}

