//
//  Switch.swift
//  170110
//
//  Created by jungwan jin on 2017. 1. 10..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation


struct InterestManager
{
    func getInterestRate(byDay:Int)->Double
    {
        if (byDay<=90)
        {
            return 0.005
        }
        else if (byDay<=180)
        {
            return 0.01
        }
        else if (byDay<=364)
        {
            return 0.02
        }
        else
        {
            return 0.056
        }
    }
    
    func calculateAmount(day:Int, amount:Int)->Double
    {
        let interest = Double(amount)*getInterestRate(byDay: day)
        return Double(amount) + interest
    }
}
