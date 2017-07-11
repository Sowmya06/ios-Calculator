//
//  SegementedViewController.swift
//  TwoWeekAssignment
//
//  Created by Sowmya Amireddy on 7/10/17.
//  Copyright © 2017 Sowmya Amireddy. All rights reserved.
//

import UIKit

class SegementedViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segement: UISegmentedControl!
    
   
    
    @IBOutlet weak var prevButton: UIButton!
    var arrayOfImages = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.png", "6.jpg", "7.jpg", "8.png", "9.png", "10.jpg"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func preButtonClicked(_ sender: UIButton) {
        
        
        switch segement.selectedSegmentIndex{
        case 0:
            slider.value -= 1
            var x = Int(slider.value)
            if x <= 9 {
                imageView.image = UIImage(named: arrayOfImages[x])
            }else {
                print("nothing")
            }
        case 1:
            slider.value -= 2
            var z = Int(slider.value)
            if z <= 9 {
                imageView.image = UIImage(named: arrayOfImages[z])
            }else{
                print("nothinh")
            }
            
        case 2:
            slider.value -= 3
            var z = Int(slider.value)
            if z <= 9 {
                imageView.image = UIImage(named: arrayOfImages[z])
            }else{
                print("nothing")
            }
        default:
            print("nothing")
            
        }

        
    }
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        
        switch segement.selectedSegmentIndex{
        case 0:
            slider.value += 1
            var y = Int(slider.value)
            print(slider.value)
            if y <= 9{
            imageView.image = UIImage(named: arrayOfImages[y])
            }else{
                print("nothing")
            }
        case 1:
            slider.value += 2
            var n = Int(slider.value)
            if n <= 9{
                imageView.image = UIImage(named: arrayOfImages[n])
            }else{
                print("nothing")
            }
        case 2:
            slider.value += 3
            var n = Int(slider.value)
            if n <= 9{
                imageView.image = UIImage(named: arrayOfImages[n])
            }else{
                print("nothing")
            }
            
        default:
            print("nothing")
            
        }


    }
    @IBAction func segementChanged(_ sender: Any) {
        
          }
    @IBAction func sliderMoved(_ sender: UISlider) {
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
