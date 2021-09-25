//
//  RandomNumberModel.swift
//  Randomizer
//
//  Created by Alexander Kovzhut on 25.09.2021.
//

import Foundation

struct RandomNumber {
    let minValue: Int
    let maxValue: Int
    
    var getRandom: Int {
        Int.random(in: minValue...maxValue)
    }
}
