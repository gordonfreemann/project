//
//  main.swift
//  170110
//
//  Created by jungwan jin on 2017. 1. 10..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

//func testInterest(unitDay : Int)
//{
//    let interestM = InterestManager()
//    let money = 1000000
//    print("money", money)
//    for nloop in stride(from: 365, to: 0, by: -unitDay)
//    {
//        print("day=", nloop, "amount=", interestM.calculateAmount(day: nloop, amount: money))
//    }
//}


//testInterest(unitDay: 1)


let arrayPractice = ArrayPractice()
arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))






let fileM = FileManager()
var result : [String] = []
do
{
    result = try fileM.contentsOfDirectory(atPath: "/Library/Desktop Pictures")
}
catch let error as NSError
{
    print(error)
}

print (result)
