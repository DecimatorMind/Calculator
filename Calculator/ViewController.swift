//
//  ViewController.swift
//  Calculator
//
//  Created by Pranjal Bhardwaj on 23/04/20.
//  Copyright © 2020 Pranjal Bhardwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {

        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {fatalError("Cannot convert text to double")}
        
        if let calcMethod = sender.currentTitle {
            
            if calcMethod == "+/-" {
                
                if displayLabel.text != "0" {
                    
                    displayLabel.text = String(number * -1)
                    
                }
                
            } else if calcMethod == "AC" {
                
                displayLabel.text = "0"
                
            } else if calcMethod == "%" {
                
                displayLabel.text = String(number * 0.01)
                
            }
            
            
        }
        
        
    
        
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                
                displayLabel.text = numValue
                
                isFinishedTypingNumber = false
                
            } else {
                
                displayLabel.text = displayLabel.text! + numValue
                
            }
            
        }
        
        
        
        
        
        
    
    
    
    
    
    
    
    }

}

