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
    
    @IBOutlet weak var label: UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
    
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            if sender.tag == 12{
                //process divide
            }
            else if sender.tag == 13{
                //process multiplication
            }
           else if sender.tag == 14{
                //process minus
            }
           else if sender.tag == 15{
                //process addition
            }
            
            
            
            
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

