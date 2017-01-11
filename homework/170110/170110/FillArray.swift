//
//  FillArray.swift
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
}
