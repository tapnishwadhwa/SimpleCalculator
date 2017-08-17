//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Tapnish on 2017-08-15.
//  Copyright © 2017 Tapnish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var prevNumber:Double = 0;
    var processMath = false;
    var operation = 0;
    
    
    @IBOutlet weak var label: UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        
        if processMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            processMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
       
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
    
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            prevNumber = Double(label.text!)!

            if sender.tag == 12{
                //process divide÷
                label.text = "÷"
            }
            else if sender.tag == 13{
                label.text = "x"
            }
           else if sender.tag == 14{
                label.text = "-"
            }
           else if sender.tag == 15{
                //process addition
                label.text = "+"
                
            }
            operation = sender.tag
            processMath = true
            
            
            
        }
        else if sender.tag == 16 {
            
            if operation == 12{
                // divide
                label.text = String(prevNumber / numberOnScreen)
            }
           else if operation == 13{
                // multiply
                label.text = String(prevNumber * numberOnScreen)
            }
           else if operation == 14{
                //subtraction
                label.text = String(prevNumber - numberOnScreen)
            }
           else if operation == 15{
                //addition
                label.text = String(prevNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11 {
            label.text = ""
            prevNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

