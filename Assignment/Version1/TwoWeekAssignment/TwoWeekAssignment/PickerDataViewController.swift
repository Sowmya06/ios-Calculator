//
//  PickerDataViewController.swift
//  TwoWeekAssignment
//
//  Created by Sowmya Amireddy on 7/10/17.
//  Copyright © 2017 Sowmya Amireddy. All rights reserved.
//

import UIKit

class PickerDataViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var tempArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func makeList(n:Int ) -> [Int] {
        var result:[Int] = []
        for i in 0..<n {
            result.append(Int(arc4random_uniform(100) + 1))
        }
        return result
    }
    
    var list:[Int] = []
    @IBAction func buttonClicked(_ sender: UIButton) {
    
           list = makeList(n: 10)
        label1.text = String(describing: list)
    }
   
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return tempArray.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return tempArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var number = Int(tempArray[row])!
    
        for k in list{
            
            if k%number == 0{
             print(k)
                
               label2.text = label2.text! + "," + String(k)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
