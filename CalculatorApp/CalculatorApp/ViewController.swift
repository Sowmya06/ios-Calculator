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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        label.text = sender.currentTitle
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

