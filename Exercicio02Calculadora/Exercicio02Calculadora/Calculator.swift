//
//  Calculator.swift
//  Exercicio02Calculadora
//
//  Created by Cesar A. Tavares on 9/19/20.
//

import Foundation

class Calculator {
    private var result: Double = 0
    private var noResult: Bool = true

    
    func sum(number1: Double, number2: Double?) -> Double {
        if let number2 = number2 {
            setResult(number: number1 + number2)
            setNoResult(result: false)
            
        } else {
            setResult(number: getResult() + number1)
            setNoResult(result: false)
        }
        return getResult()
    }
    
    func subtract(number1: Double, number2: Double?) -> Double {
        if let number2 = number2 {
            setResult(number: number1 - number2)
            setNoResult(result: false)
        } else {
            setResult(number: getResult() - number1)
            setNoResult(result: false)
        }
        return getResult()
    }
    
    func divide(number1: Double, number2: Double?) -> Double {
        if let number2 = number2 {
            setResult(number: number1 / number2)
            setNoResult(result: false)
        } else {
            setResult(number: getResult() / number1)
            setNoResult(result: false)
        }
        return getResult()
    }
    
   func multiply(number1: Double, number2: Double?) -> Double {
        if let number2 = number2 {
            setResult(number: number1 * number2)
            setNoResult(result: false)
        } else {
            setResult(number: getResult() * number1)
            setNoResult(result: false)
        }
        return getResult()
    }
    
    func getResult() -> Double {
        return result
    }
    
    func setResult(number: Double) {
        result = number
    }
    
    func setNoResult(result: Bool) {
        noResult = result
    }
    
    func getNoResult() -> Bool {
        return noResult
    }
}
