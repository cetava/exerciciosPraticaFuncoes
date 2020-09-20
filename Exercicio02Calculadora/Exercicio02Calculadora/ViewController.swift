//
//  ViewController.swift
//  Exercicio02Calculadora
//
//  Created by Cesar A. Tavares on 9/19/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelResult: UILabel!
    var number1: Double = 0
    var number2: Double?
    var result: Double = 0
    var equalButton: Bool = false
    var operatorButtonClicked: Bool = false
    var newCount: Bool = true
    var sendOperator: String = ""
    let checkResult = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func actionButton1(_ sender: Any) {
        validateLabelNumber(number: "1")
    }
    
    @IBAction func actionButton2(_ sender: Any) {
        validateLabelNumber(number: "2")
    }
    
    @IBAction func actionButton3(_ sender: Any) {
        validateLabelNumber(number: "3")
    }
    
    @IBAction func actionButton4(_ sender: Any) {
        validateLabelNumber(number: "4")
    }
    
    @IBAction func actionButton5(_ sender: Any) {
        validateLabelNumber(number: "5")
    }
    
    @IBAction func actionButton6(_ sender: Any) {
        validateLabelNumber(number: "6")
    }
    
    @IBAction func actionButton7(_ sender: Any) {
        validateLabelNumber(number: "7")
    }
    
    @IBAction func actionButton8(_ sender: Any) {
        validateLabelNumber(number: "8")
    }
    
    @IBAction func actionButton9(_ sender: Any) {
        validateLabelNumber(number: "9")
    }
    
    @IBAction func actionButton0(_ sender: Any) {
        validateLabelNumber(number: "0")
    }
    
    
    @IBAction func actionButtonClear(_ sender: Any) {
        newCount = true
        operatorButtonClicked = false
        labelResult.text = "0"
        sendOperator = ""
        resetNumbers()
        checkResult.setNoResult(result: true)
        checkResult.setResult(number: 0)
    }
    
    @IBAction func actionButtonDivide(_ sender: Any) {
        sendOperator = "divide"
        operatorSelect()
    }
    
    @IBAction func actionButtonMultiply(_ sender: Any) {
        sendOperator = "multiply"
        operatorSelect()
    }
    
    @IBAction func actionButtonSubtract(_ sender: Any) {
        sendOperator = "subtract"
        operatorSelect()
    }
    
    @IBAction func actionButtonSum(_ sender: Any) {
        sendOperator = "sum"
        operatorSelect()
    }
    
    @IBAction func actionButtonEqual(_ sender: Any) {
        checkNewCount()
        if sendOperator == "sum" {
            labelResult.text = String(checkResult.sum(number1: number1, number2: number2))
            resetNumbers()
        } else if sendOperator == "subtract" {
            labelResult.text = String(checkResult.subtract(number1: number1, number2: number2))
            resetNumbers()
        } else if sendOperator == "multiply" {
            labelResult.text = String(checkResult.multiply(number1: number1, number2: number2))
            resetNumbers()
        }else if sendOperator == "divide" {
            if let number2 = number2 {
                if number2 == 0 {
                    labelResult.text = "Not a number"
                } else {
                    labelResult.text = String(checkResult.divide(number1: number1, number2: number2))
                    checkResult.setResult(number: Double(labelResult.text!)!)
                    resetNumbers()
                }
            }
        } else {
            labelResult.text = "0"
        }
        operatorButtonClicked = true
    }
    
    
    
    func validateLabelNumber(number: String) {
        if labelResult.text == "0" || operatorButtonClicked || labelResult.text == "Not a number" {
            labelResult.text = number
            operatorButtonClicked = false
        } else {
            labelResult.text = "\(labelResult.text!)\(String(number))"
            operatorButtonClicked = false
        }
    }
    
    
    func checkNewCount() {
        if number1 != 0 && !operatorButtonClicked {
            number2 = Double(labelResult.text!)!
        }
    }
    
    
    func operatorSelect(){
        operatorButtonClicked = true
        if !checkResult.getNoResult() || newCount {
            number1 = Double(labelResult.text!)!
        }
        newCount = false
    }
    
    
    func resetNumbers() {
        number1 = 0
        number2 = nil
    }
}

