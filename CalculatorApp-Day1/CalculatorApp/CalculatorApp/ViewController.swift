//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Sowmya Amireddy on 7/5/17.
//  Copyright © 2017 Sowmya Amireddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    var isTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        if isTyping {
            label.text = label.text! + sender.currentTitle!
        }else {
            label.text = sender.currentTitle!
            isTyping = true
        }
    }

    @IBAction func ClickEquals(_ sender: UIButton) {
        
    }
   
    @IBAction func performCalculation(_ sender: UIButton) {
        var symbol = sender.currentTitle!
        label.text = symbol
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

