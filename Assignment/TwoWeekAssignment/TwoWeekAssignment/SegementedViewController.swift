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
    var customValue = 1
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func preButtonClicked(_ sender: UIButton){
        slider.value -= Float(customValue)
        self.sliderMoved(slider)
    }
    @IBAction func nextButtonClicked(_ sender: UIButton){
        slider.value += Float(customValue)
        self.sliderMoved(slider)
    }
    @IBAction func segementChanged(_ sender: Any) {
        switch segement.selectedSegmentIndex{
        case 0:
            slider.maximumValue = 9
            slider.minimumValue = 0
            slider.setValue(0, animated: true)
            self.preButtonClicked(prevButton)
            self.nextButtonClicked(nextButton)
        case 1:
            slider.maximumValue = 9
            slider.minimumValue = 1
            slider.setValue(1, animated: true)
            customValue = 2
            self.preButtonClicked(prevButton)
            self.nextButtonClicked(nextButton)
        case 2:
            slider.maximumValue = 8
            slider.minimumValue = 0
            slider.setValue(0, animated: true)
            customValue = 2
            self.preButtonClicked(prevButton)
            self.nextButtonClicked(nextButton)
        default:
            break
        }
    }
    @IBAction func sliderMoved(_ sender: UISlider) {
        var x = Int(slider.value)
        print(x)
        imageView.image = UIImage(named: arrayOfImages[x])
    }
    

//    @IBAction func preButtonClicked(_ sender: UIButton) {
//        
//        
//        switch segement.selectedSegmentIndex{
//        case 0:
//            slider.value -= 1
//            var x = Int(slider.value)
//            if x <= 9 {
//                imageView.image = UIImage(named: arrayOfImages[x])
//            }else {
//                print("nothing")
//            }
//        case 1:
//            slider.value -= 2
//            var z = Int(slider.value)
//            if z <= 9 {
//                imageView.image = UIImage(named: arrayOfImages[z])
//            }else{
//                print("nothinh")
//            }
//            
//        case 2:
//            slider.value -= 3
//            var z = Int(slider.value)
//            if z <= 9 {
//                imageView.image = UIImage(named: arrayOfImages[z])
//            }else{
//                print("nothing")
//            }
//        default:
//            print("nothing")
//            
//        }
//
//        
//    }
//    @IBAction func nextButtonClicked(_ sender: UIButton) {
//        
//        
//        switch segement.selectedSegmentIndex{
//        case 0:
//            slider.value += 1
//            var y = Int(slider.value)
//            print(slider.value)
//            if y <= 9{
//            imageView.image = UIImage(named: arrayOfImages[y])
//            }else{
//                print("nothing")
//            }
//        case 1:
//            slider.value += 2
//            var n = Int(slider.value)
//            if n <= 9{
//                imageView.image = UIImage(named: arrayOfImages[n])
//            }else{
//                print("nothing")
//            }
//        case 2:
//            slider.value += 3
//            var n = Int(slider.value)
//            if n <= 9{
//                imageView.image = UIImage(named: arrayOfImages[n])
//            }else{
//                print("nothing")
//            }
//            
//        default:
//            print("nothing")
//            
//        }
//
//
//    }
//
//        
//          }
//    @IBAction func sliderMoved(_ sender: UISlider) {
//}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
