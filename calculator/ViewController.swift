//
//  ViewController.swift
//  calculator
//
//  Created by Гость on 30.03.2022.
//

import UIKit

class ViewController : UIViewController {
    


    @IBOutlet weak var resultLabel : UILabel!
    @IBOutlet weak var buttonChangeResultLabel : UIStepper!
    @IBOutlet weak var buttons : UIStackView!
    
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        
        else
        {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        
        }
        
    }
    
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as!
        String
    }
    
    @IBAction func result(_sender: UIButton){
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    @IBAction func result(_ sender: UIButton) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
            Double(numberTwo)!
        case "+":
            result = Double(numberOne)! +
            Double(numberTwo)!
        case "-":
            result = Double(numberOne)! -
            Double(numberTwo)!
        case "*":
            result = Double(numberOne)! *
            Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0)
            == 0.0 {
            resultLabel.text = String(Int(result))
        }else{
            resultLabel.text = String(result)
        }
    }
    @IBAction func stepper(_ sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        resultLabel.font = UIFont(name: font!, size: fontSize)
    }
    @IBAction func hiddenButtons(_sender: UISwitch) {
        buttons.isHidden = !buttons.isHidden
        resultLabel.isHidden = !resultLabel.isHidden
    }
}



