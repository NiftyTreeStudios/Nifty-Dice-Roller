//
//  NiftyDiceRoller.swift
//  Nifty Dice Roller
//
//  Created by Iiro Alhonen on 3.2.2021.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

/**
 This function is used to roll the dice and returning the total of the roll.
 
 - Parameter dice: The die used.
 - Parameter diceAmount: The amount of dice being rolled, default is 1.
 - Parameter modifier: The modifier used for the roll (-5, +6, etc.), default is 0.
 
 - Returns: The total of the rolled dice with the modifier (optional).
 */
public func rollMultiple(dice: Dice, diceAmount: Int = 1, modifier: Int = 0) -> Int {
    var calculatedTotal: Int = 0
    for _ in 1...diceAmount {
        let roll = diceRoll(dice: dice)
        calculatedTotal += roll
    }
    calculatedTotal += modifier
    return calculatedTotal
}

/**
 Roll a single die without modifiers.
 
 - Parameter dice: The die used.
 
 - Returns: A die roll using the dice given.
 */
public func diceRoll(dice: Dice) -> Int {
    switch dice {
    case .d4:
        return Int.random(in: 1...4)
    case .d6:
        return Int.random(in: 1...6)
    case .d8:
        return Int.random(in: 1...8)
    case .d10:
        return Int.random(in: 1...10)
    case .d12:
        return Int.random(in: 1...12)
    case .d20:
        return Int.random(in: 1...20)
    case .d100:
        return Int.random(in: 1...100)
    }
}
